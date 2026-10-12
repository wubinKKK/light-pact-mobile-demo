# 发布工具

verify-runtime.ps1 检查 app/ 是否是完整的 Godot Web 运行包，确认 index.html 的本地引用存在，并可选地检查公网资源。

    pwsh -File tools/verify-runtime.ps1 -RuntimeDir app
    pwsh -File tools/verify-runtime.ps1 -RuntimeDir app -BaseUrl https://wubinkkk.github.io/light-pact-mobile-demo/

工具不修改导出文件，只报告缺失、悬空引用、编辑器残留和公网错误。
