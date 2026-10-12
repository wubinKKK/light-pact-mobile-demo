# Release notes

Web runtime files live under app/. GitHub Pages uploads app/ as the site artifact through .github/workflows/pages.yml, so the public URL stays unchanged.

Source structure commit: 8ddc78c
Pages deployment: GitHub Actions

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
