# Release notes

本次发布跟随私有源仓库 8ddc78c。源工程的运行时已按 game/app、game/components、game/features、game/core、game/ui、game/debug 分层；公网仓库只承载导出后的 Web runtime。

## 为什么运行文件在根目录

GitHub Pages 当前从根目录部署，index.html 必须作为入口保留在根目录。把导出文件再包进 web/ 会改变站点入口，因此不会为了目录观感移动这些部署文件。

## 本次校验

- Godot editor import：通过
- Godot 逻辑与真实渲染 QA：QA_FAILED=0
- 本地 Web 冒烟：桌面鼠标、竖屏拦截、横屏触控通过
- 实体 iPhone Safari：等待设备连接后复测
