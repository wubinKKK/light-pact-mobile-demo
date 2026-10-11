# Public smoke receipt

验证脚本：qa/web_smoke.mjs，针对本次 Web 导出运行。

- Desktop 1280x720：鼠标推进序章通过
- Mobile portrait 390x844：竖屏拦截通过
- Mobile landscape 844x390：触控推进序章、旅途菜单和设置入口通过
- 结果：WEB_SMOKE_PASS

这份结果来自 Playwright WebKit/Chromium 模拟触控；真机 Safari 需在 iPhone 连接后补一条设备记录。
