<script setup lang="ts">
// Live terminal served by ttyd (scripts/ttyd.sh). Shows a hint instead of an
// empty frame when ttyd isn't running. Takes keyboard focus when its slide becomes current,
// so you can type right away after navigating with the keyboard.
// Each terminal slide gets its own tmux session: `session` names it, and by default it's
// derived from the slide number (slide-9, slide-15, ...).
import { useIsSlideActive, useSlideContext } from '@slidev/client'
import { computed, nextTick, onMounted, ref } from 'vue'

const props = withDefaults(defineProps<{ src?: string; session?: string; height?: string; sketch?: boolean }>(), {
  src: 'http://localhost:7681',
  height: '22rem',
  sketch: true,
})

const up = ref<boolean | null>(null)

async function probe() {
  try {
    await fetch(props.src, { mode: 'no-cors', cache: 'no-store' })
    up.value = true
  } catch {
    up.value = false
  }
}

onMounted(probe)

const frame = ref<HTMLIFrameElement>()
const active = useIsSlideActive()
const { $page, $renderContext } = useSlideContext()
const url = computed(() => `${props.src}/?arg=${encodeURIComponent(props.session ?? `slide-${$page.value}`)}`)
// Connect only on the current slide (audience or presenter view). ttyd focuses itself on
// load, so a connected copy elsewhere (e.g. the presenter's next-slide preview) would steal
// the keyboard from Slidev; `inert` doesn't stop a cross-origin iframe from doing that.
// Reconnecting is cheap: the shell lives on in tmux.
const live = computed(() => ['slide', 'presenter'].includes($renderContext.value) && active.value)

async function focus() {
  // Right after navigating, the slide may still be hidden by the transition: retry briefly.
  for (let i = 0; i < 20 && live.value; i++) {
    await nextTick()
    frame.value?.focus()
    if (document.activeElement === frame.value)
      return
    await new Promise(resolve => setTimeout(resolve, 50))
  }
}
</script>

<template>
  <div class="terminal" :class="{ 'sketch-box': sketch }" :style="{ height }">
    <iframe v-if="up && live" ref="frame" :src="url" @load="focus" allow="clipboard-read; clipboard-write" class="w-full h-full" />
    <div v-else-if="up === false" class="offline" @click="probe">
      <div>terminal offline</div>
      <code>scripts/ttyd.sh</code>
      <div class="text-sm opacity-60">then click here to retry</div>
    </div>
  </div>
</template>

<style scoped>
.terminal {
  overflow: hidden;
  background: #1e1e1e;
  padding: 0.4rem;
}
iframe {
  border: 0;
}
.offline {
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 0.5rem;
  color: #f1f3f5;
  cursor: pointer;
}
</style>
