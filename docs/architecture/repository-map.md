# 公网仓库地图

| 目录 | 职责 | 是否部署 |
| --- | --- | --- |
| app/ | Godot Web 导出物和浏览器启动资源 | 是，唯一发布目录 |
| docs/ | 结构、发布链路和交接说明 | 否 |
| qa/ | 公网入口和资源回归 | 否 |
| tools/ | 发布包完整性校验 | 否 |
| .github/workflows/ | Pages 构建与发布门禁 | 否 |

发布方向：私有 Godot 源工程 -> 导出和源仓库 QA -> 同步到 app/ -> verify-runtime.ps1 -> GitHub Pages -> public smoke 和 iPhone Safari。

根目录不放 index.html、index.pck、index.wasm 等运行文件，避免发布入口和仓库管理文件混在一起。
