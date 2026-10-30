// Same pipeline as pipeline.mjs, plus the PreCodeGenCallback: the plugin sits between
// middle-end and backend; `true` skips the backend, `false` falls through to it.
const font = { fontFamily: 6, fontSize: 20 }           // 6 = Nunito, like the slide text
const H = 110, GAP = 100
const box = (id, x, y, width, text, extra = {}) => ({
  type: 'rectangle', id, x, y, width, height: H, strokeWidth: 2, roughness: 1,
  roundness: { type: 3 }, backgroundColor: '#ffffff', fillStyle: 'solid',
  label: { text, ...font }, ...extra,
})
// Straight arrow between two points, bound to the given shapes.
const arrow = (from, to, [x0, y0], [x1, y1], text, extra = {}) => ({
  type: 'arrow', x: x0, y: y0, width: x1 - x0, height: y1 - y0,
  points: [[0, 0], [x1 - x0, y1 - y0]], strokeWidth: 2,
  start: { id: from }, end: { id: to },
  ...(text ? { label: { text, ...font, fontSize: 16 } } : {}), ...extra,
})

const FE = 190, ME = 170, BE = 240, PY = -190
const fe = 0, me = fe + FE + GAP, be = me + ME + GAP, obj = be + BE + GAP

export default [
  box('fe', fe, 0, FE, 'Frontend\nclang · flang\nrustc · …'),
  box('me', me, 0, ME, 'Middle-end\nopt pipeline'),
  box('pl', be, PY, BE, 'Plugin\nPreCodeGenCallback', { backgroundColor: '#ffec99' }),
  box('be', be, 0, BE, 'Backend\nISel → MIR\n→ RegAlloc → MC', { backgroundColor: '#a5d8ff', fillStyle: 'hachure' }),
  { type: 'ellipse', id: 'obj', x: obj, y: 10, width: 130, height: H - 20, strokeWidth: 2,
    label: { text: 'object\nfile', ...font } },
  arrow('fe', 'me', [fe + FE + 8, H / 2], [me - 8, H / 2], 'IR'),
  arrow('me', 'pl', [me + ME / 2, -8], [be - 8, PY + H / 2], 'Module'),
  arrow('pl', 'obj', [be + BE + 8, PY + H / 2], [obj + 65, 2], 'true', { strokeColor: '#2f9e44' }),
  arrow('pl', 'be', [be + BE / 2, PY + H + 8], [be + BE / 2, -8], 'false', { strokeColor: '#e03131' }),
  arrow('be', 'obj', [be + BE + 8, H / 2], [obj - 8, H / 2]),
]
