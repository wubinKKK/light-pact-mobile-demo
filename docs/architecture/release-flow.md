# Web 发布链路

1. 在私有源仓库完成 Godot 导出和真实窗口、Web 触控 QA。
2. 只同步最终运行文件到本仓库 app/。
3. 运行 tools/verify-runtime.ps1。
4. 推送 main，Pages workflow 先校验再上传 app/。
5. 部署后运行 qa/public-smoke.ps1，并记录 iPhone Safari 结果。

部署成功只说明资源可达；真机横屏、触控、字体和状态恢复仍需单独记录。
