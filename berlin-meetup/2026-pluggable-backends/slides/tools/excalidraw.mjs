// Render an Excalidraw "skeleton" scene (diagrams/<name>.mjs) with the real
// Excalidraw library in headless Chromium and write:
//   diagrams/<name>.excalidraw   editable on excalidraw.com (File > Open)
//   public/diagrams/<name>.svg   used by the slides
// Usage: node tools/excalidraw.mjs <name> [<name> ...]
import { chromium } from 'playwright-chromium'
import { readFile, writeFile } from 'node:fs/promises'
import { pathToFileURL } from 'node:url'
import path from 'node:path'

const VER = '0.18.1'
const root = path.resolve(path.dirname(new URL(import.meta.url).pathname), '..')

const browser = await chromium.launch()
const page = await browser.newPage()
page.on('console', m => { if (m.type() === 'error') console.error('[browser]', m.text()) })
await page.setContent(`<script>window.EXCALIDRAW_ASSET_PATH =
  "https://cdn.jsdelivr.net/npm/@excalidraw/excalidraw@${VER}/dist/prod/";</script>
<script type="module">
  import * as X from "https://esm.sh/@excalidraw/excalidraw@${VER}?deps=react@19.0.0,react-dom@19.0.0";
  window.X = X;
</script>`)
await page.waitForFunction(() => window.X, null, { timeout: 120000 })
// Text is measured on conversion, so the hand-drawn font must be loaded first.
await page.addStyleTag({ url: 'https://fonts.googleapis.com/css2?family=Nunito:wght@400;600&display=block' })
await page.evaluate(async (base) => {
  const f = new FontFace('Virgil', `url(${base}fonts/Virgil/Virgil-Regular.woff2)`)
  document.fonts.add(await f.load())
  await document.fonts.load('20px Nunito')
}, `https://cdn.jsdelivr.net/npm/@excalidraw/excalidraw@${VER}/dist/prod/`)

for (const name of process.argv.slice(2)) {
  const { default: skeleton } = await import(pathToFileURL(path.join(root, 'diagrams', `${name}.mjs`)).href)
  const { elements, svg } = await page.evaluate(async (skeleton) => {
    const elements = window.X.convertToExcalidrawElements(skeleton, { regenerateIds: false })
    const node = await window.X.exportToSvg({
      elements,
      appState: { exportBackground: false, exportWithDarkMode: false, exportEmbedScene: false },
      files: null,
      exportPadding: 12,
    })
    return { elements, svg: node.outerHTML }
  }, skeleton)
  const scene = { type: 'excalidraw', version: 2, source: 'berlinllvm-slides', elements, appState: { viewBackgroundColor: '#ffffff' }, files: {} }
  await writeFile(path.join(root, 'diagrams', `${name}.excalidraw`), JSON.stringify(scene, null, 2))
  await writeFile(path.join(root, 'public', 'diagrams', `${name}.svg`), svg)
  console.log(`${name}: ${elements.length} elements, svg ${svg.length} bytes`)
}
await browser.close()
