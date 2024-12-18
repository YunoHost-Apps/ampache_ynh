<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Ampache

[![集成程度](https://apps.yunohost.org/badge/integration/ampache)](https://ci-apps.yunohost.org/ci/apps/ampache/)
![工作状态](https://apps.yunohost.org/badge/state/ampache)
![维护状态](https://apps.yunohost.org/badge/maintained/ampache)

[![使用 YunoHost 安装 Ampache](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ampache)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Ampache。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Ampache is a web based audio/video streaming application and file manager allowing you to access your music & videos from anywhere, using almost any internet enabled device.

### Features

 * Config for high quality streaming with high bandwith
 * Quick loading for mobile devices with potential low bandwith
 * Integrate with YunoHost users - same username and password
 * Allow one user to be the administrator (set at the installation)

**分发版本：** 7.1.0~ynh1

**演示：** <https://ampache.org/demo.html>

## 截图

![Ampache 的截图](./doc/screenshots/visualizer.png)

## 文档与资源

- 官方应用网站： <http://ampache.org>
- 官方管理文档： <https://github.com/ampache/ampache/wiki>
- 上游应用代码库： <https://github.com/ampache/ampache>
- YunoHost 商店： <https://apps.yunohost.org/app/ampache>
- 报告 bug： <https://github.com/YunoHost-Apps/ampache_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/ampache_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
或
sudo yunohost app upgrade ampache -u https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
