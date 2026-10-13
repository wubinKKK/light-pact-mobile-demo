# Release notes

Web runtime files live under app/. GitHub Pages uploads app/ as the site artifact through .github/workflows/pages.yml, so the public URL stays unchanged.

Source structure commit: 8ddc78c
Pages deployment: GitHub Actions

## 2026-10-13 Six-seal Sudoku trial

- Source commit: `e1f1e5b` in the private Godot repository.
- The decline branch now uses a fixed, unique 6×6 puzzle with a dedicated number pad, conflict highlighting, row-light progress, and a three-stage in-world hint.
- The Web font subset scans current game sources again; the release check covers 891 runtime glyphs.
- Godot full QA: `QA_FAILED=0`. Local WebKit 844×390 Sudoku touch: `WEB_SUDOKU_TOUCH_PASS`. Chromium desktop and mobile smoke: `WEB_SMOKE_PASS`.
- Generic WebKit smoke still emits the pre-existing `glBlitFramebuffer` validation warning, so that broader smoke remains non-green. Physical iPhone Safari testing remains pending.

## 2026-10-12 Puzzle and finale motion

- Source commit: `594c31e` in the private Godot repository.
- Finale crystals now float and pulse; the dark projectile trails animated mist, and successful taps illuminate the touched object. Maze markers, thorn knot, stone tracks and rule boards also respond at their own scene positions.
- Godot full QA: `QA_FAILED=0`. Local WebKit landscape touch reached the finale, confirmed crystal motion and a successful crystal tap: `WEB_WORLD_QTE_TOUCH_PASS`.
- Physical iPhone Safari evidence remains pending a device run.

## 2026-10-12 Character state feedback

- Source commit: `ac5d8f2` in the private Godot repository.
- Hungry rabbit in the chicken yard now lowers her head and holds her stomach; after feeding, an upright smiling pose appears beside the field. Captive and rescued rabbit and hedgehog poses remain distinct in the cage scene.
- Godot full QA: `QA_FAILED=0`. The final pose and placement passed live visual capture, and local mobile landscape Web touch reached the fed field: `WEB_WORLD_TOUCH_PASS`.
- Physical iPhone Safari evidence remains pending a device run.

## 2026-10-12 Pixel character scene update

- Source commit: `e6f2c91` in the private Godot repository.
- The Web content package now includes four-frame pixel character loops for the chicken-yard and moon-thorn cage scenes.
- Godot visual and interaction QA: `QA_FAILED=0`; local Web landscape touch and loader checks: `WEB_SMOKE_PASS`, `WEB_WORLD_TOUCH_PASS`.
- Physical iPhone Safari evidence is pending a separate device run.
