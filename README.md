# Light Pact Mobile Demo

这是《灯见的宣召》的公网 Web 试玩仓库，GitHub Pages 直接从根目录加载运行时文件。

## 试玩

- [iPhone / Web 试玩](https://wubinkkk.github.io/light-pact-mobile-demo/)
- 建议使用 iPhone Safari 横屏打开；竖屏会被方向保护拦截。
- 中国大陆网络需要可访问 GitHub Pages 的网络路径。

## 目录约定

根目录运行文件：index.html、index.js、index.wasm、index.pck 和图标文件。
docs/：发布说明和来源。
qa/：公网冒烟与触控验收记录。

根目录运行文件是 Pages 的部署入口，因此保持在根目录；源代码、设计、资产流水线和 Godot QA 位于私有源仓库：[light-pact-godot-demo](https://github.com/wubinKKK/light-pact-godot-demo)。

## 当前发布

- 源工程提交：8ddc78c
- 发布内容：Godot 4.7.2 Web 导出
- 交互范围：序章调查、界门、第一世界、终局 QTE、旅途菜单、存档和设置

详见 docs/release.md 和 qa/public-smoke.md。
