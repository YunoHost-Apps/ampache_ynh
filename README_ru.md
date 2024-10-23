<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Ampache для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/ampache.svg)](https://ci-apps.yunohost.org/ci/apps/ampache/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/ampache.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/ampache.maintain.svg)

[![Установите Ampache с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ampache)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Ampache быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Ampache is a web based audio/video streaming application and file manager allowing you to access your music & videos from anywhere, using almost any internet enabled device.

### Features

 * Config for high quality streaming with high bandwith
 * Quick loading for mobile devices with potential low bandwith
 * Integrate with YunoHost users - same username and password
 * Allow one user to be the administrator (set at the installation)

**Поставляемая версия:** 7.0.0~ynh1

**Демо-версия:** <https://ampache.org/demo.html>

## Снимки экрана

![Снимок экрана Ampache](./doc/screenshots/visualizer.png)

## Документация и ресурсы

- Официальный веб-сайт приложения: <http://ampache.org>
- Официальная документация администратора: <https://github.com/ampache/ampache/wiki>
- Репозиторий кода главной ветки приложения: <https://github.com/ampache/ampache>
- Магазин YunoHost: <https://apps.yunohost.org/app/ampache>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/ampache_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/ampache_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
или
sudo yunohost app upgrade ampache -u https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
