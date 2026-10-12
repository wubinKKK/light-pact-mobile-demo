# 公网 QA

这里验证已部署站点的入口和静态运行资源，不替代私有源仓库里的 Godot 真实渲染 QA。

运行：

    pwsh -File qa/public-smoke.ps1 -BaseUrl https://wubinkkk.github.io/light-pact-mobile-demo/

脚本检查入口、Godot Web runtime、内容包、图标和音频 worklet 是否返回 HTTP 200，并检查运行包本地引用。
