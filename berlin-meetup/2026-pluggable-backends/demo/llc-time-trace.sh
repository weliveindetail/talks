#!/usr/bin/env bash
# Where does llc's time go? Runs llc -O0 once with LLVM's backend and once with TPDE, both with
# -time-trace, and compares the backend span ("OptModule" vs "TPDE") with the whole run.
# Single runs, and tracing adds some overhead: use bench-llc.sh for end-to-end statistics.
# Run from anywhere on the host; re-executes itself inside the build container.
# WORKLOAD=<file.bc|file.ll> picks the IR, relative to the workspace root (default: the
# Verifier.bc that bench-llc.sh generates). Traces go to build/bench/trace-{llvm,tpde}.json
# (open them in https://ui.perfetto.dev or chrome://tracing).
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
if [ ! -f /.dockerenv ]; then
  exec "$WS/scripts/docker.sh" env WORKLOAD="${WORKLOAD:-}" "$WS/demo/$(basename "$0")" "$@"
fi
cd "$WS"

export PATH="$WS/build/llvm/bin:$PATH"
W="${WORKLOAD:-build/bench/Verifier.bc}"
if [ ! -f "$W" ]; then
  echo "error: $W not found (run demo/bench-llc.sh once to generate it)" >&2
  exit 1
fi
case "$W" in /*) ;; *) W="../$W" ;; esac   # relative to demo/ from here on
cd demo   # tpde-plugin.so is a symlink to build/tpde/tpde-llvm/tpde-plugin.so
T=../build/bench

# Print the command like set -x does, run it, and print its wall time in ms to stdout.
run() {
  local start end
  echo "+ $*" >&2
  start=$(date +%s%N)
  "$@"
  end=$(date +%s%N)
  echo $(( (end - start) / 1000000 ))
}

WALL_LLVM=$(run llc -O0 -filetype=obj -time-trace -time-trace-file=$T/trace-llvm.json "$W" -o /dev/null)
WALL_TPDE=$(run llc -O0 -filetype=obj -load-pass-plugin=./tpde-plugin.so \
                -time-trace -time-trace-file=$T/trace-tpde.json "$W" -o /dev/null)

python3 - "$T" "$WALL_LLVM" "$WALL_TPDE" <<'EOF'
import json, sys
T, wall = sys.argv[1], {'llvm': int(sys.argv[2]), 'tpde': int(sys.argv[3])}
backend_span = {'llvm': 'OptModule', 'tpde': 'TPDE'}

def top_level(name):
    """Durations (ms) of the outermost spans on the main thread, summed by name."""
    ev = [e for e in json.load(open(f'{T}/trace-{name}.json'))['traceEvents']
          if e.get('ph') == 'X' and not e['name'].startswith('Total ')]
    tid = min(e['tid'] for e in ev)
    sums, end = {}, -1
    for e in sorted((e for e in ev if e['tid'] == tid), key=lambda e: e['ts']):
        if e['ts'] >= end:
            sums[e['name']] = sums.get(e['name'], 0) + e['dur'] / 1000
            end = e['ts'] + e['dur']
    return sums

rows = {}
for name in ('llvm', 'tpde'):
    spans = top_level(name)
    backend = spans.get(backend_span[name], 0)
    rows[name] = (wall[name], backend, wall[name] - backend)

print(f"\n{'':32}{'LLVM':>10}{'TPDE':>10}")
for i, label in enumerate(['total (wall)', 'backend (OptModule / TPDE)',
                           'rest: startup, read + verify IR']):
    print(f"{label:32}{rows['llvm'][i]:>8.0f}ms{rows['tpde'][i]:>8.0f}ms")
print(f"\nbackend speedup:    {rows['llvm'][1] / rows['tpde'][1]:5.1f}x")
print(f"end-to-end speedup: {rows['llvm'][0] / rows['tpde'][0]:5.1f}x")
EOF
