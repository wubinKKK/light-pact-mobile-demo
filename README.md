# Light Pact Mobile Demo

这是《灯见的宣召》的 iPhone Safari / Web 公网试玩仓库。它只承载已经通过源工程 QA 的发布运行包，GitHub Pages 通过 Actions 只发布 app/。

试玩地址：https://wubinkkk.github.io/light-pact-mobile-demo/

源代码、设计、资产流水线和 Godot QA 位于私有源仓库：https://github.com/wubinKKK/light-pact-godot-demo。

## 目录职责

- app/：Godot Web 导出物，唯一部署目录。
- docs/：发布仓库地图、发布链路和交接清单。
- qa/：公网入口和静态资源回归。
- tools/：运行包完整性、引用和编辑器残留检查。
- .github/workflows/：先校验 app/，再部署 GitHub Pages。

本仓库不重复维护 Godot 源场景、脚本、剧情、原始资产和完整真机证据；这些内容统一在私有源仓库维护。

## 发布前检查

    powershell -ExecutionPolicy Bypass -File tools/verify-runtime.ps1 -RuntimeDir app
    powershell -ExecutionPolicy Bypass -File qa/public-smoke.ps1 -BaseUrl https://wubinkkk.github.io/light-pact-mobile-demo/
