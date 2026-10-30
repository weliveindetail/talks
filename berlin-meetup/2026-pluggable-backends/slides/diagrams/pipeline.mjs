// Compiler pipeline: frontend -> middle-end -> backend -> object file.
// Excalidraw skeleton format: https://docs.excalidraw.com/docs/@excalidraw/excalidraw/api/excalidraw-element-skeleton
const font = { fontFamily: 6, fontSize: 20 }           // 6 = Nunito, like the slide text
const H = 110, GAP = 100
const box = (id, x, width, text, extra = {}) => ({
  type: 'rectangle', id, x, y: 0, width, height: H, strokeWidth: 2, roughness: 1,
  roundness: { type: 3 }, backgroundColor: '#ffffff', fillStyle: 'solid',
  label: { text, ...font }, ...extra,
})
// Horizontal arrow from the right edge of one shape to the left edge of the next.
const arrow = (from, to, x0, x1, text) => ({
  type: 'arrow', x: x0 + 8, y: H / 2, width: x1 - x0 - 16, height: 0,
  points: [[0, 0], [x1 - x0 - 16, 0]], strokeWidth: 2,
  start: { id: from }, end: { id: to },
  ...(text ? { label: { text, ...font, fontSize: 16 } } : {}),
})

const FE = 190, ME = 170, BE = 240
const fe = 0, me = fe + FE + GAP, be = me + ME + GAP, obj = be + BE + GAP

export default [
  box('fe', fe, FE, 'Frontend\nclang · flang\nrustc · …'),
  box('me', me, ME, 'Middle-end\nopt pipeline'),
  box('be', be, BE, 'Backend\nISel → MIR\n→ RegAlloc → MC', { backgroundColor: '#a5d8ff', fillStyle: 'hachure' }),
  { type: 'ellipse', id: 'obj', x: obj, y: 10, width: 130, height: H - 20, strokeWidth: 2,
    label: { text: 'object\nfile', ...font } },
  arrow('fe', 'me', fe + FE, me, 'IR'),
  arrow('me', 'be', me + ME, be, 'IR'),
  arrow('be', 'obj', be + BE, obj),
]
