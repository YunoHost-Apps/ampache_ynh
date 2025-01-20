<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Ampache voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/ampache)](https://ci-apps.yunohost.org/ci/apps/ampache/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/ampache)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/ampache)

[![Ampache met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ampache)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Ampache snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Ampache is a web based audio/video streaming application and file manager allowing you to access your music & videos from anywhere, using almost any internet enabled device.

### Features

 * Config for high quality streaming with high bandwith
 * Quick loading for mobile devices with potential low bandwith
 * Integrate with YunoHost users - same username and password
 * Allow one user to be the administrator (set at the installation)

**Geleverde versie:** 7.2.0~ynh1

**Demo:** <https://ampache.org/demo.html>

## Schermafdrukken

![Schermafdrukken van Ampache](./doc/screenshots/visualizer.png)

## Documentatie en bronnen

- Officiele website van de app: <http://ampache.org>
- Officiele beheerdersdocumentatie: <https://github.com/ampache/ampache/wiki>
- Upstream app codedepot: <https://github.com/ampache/ampache>
- YunoHost-store: <https://apps.yunohost.org/app/ampache>
- Meld een bug: <https://github.com/YunoHost-Apps/ampache_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/ampache_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
of
sudo yunohost app upgrade ampache -u https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
