<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Ampache YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/ampache.svg)](https://ci-apps.yunohost.org/ci/apps/ampache/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/ampache.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/ampache.maintain.svg)

[![Instalatu Ampache YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ampache)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Ampache YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Ampache is a web based audio/video streaming application and file manager allowing you to access your music & videos from anywhere, using almost any internet enabled device.

### Features

 * Config for high quality streaming with high bandwith
 * Quick loading for mobile devices with potential low bandwith
 * Integrate with YunoHost users - same username and password
 * Allow one user to be the administrator (set at the installation)

**Paketatutako bertsioa:** 6.6.4~ynh1

**Demoa:** <https://ampache.org/demo.html>

## Pantaila-argazkiak

![Ampache(r)en pantaila-argazkia](./doc/screenshots/visualizer.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <http://ampache.org>
- Administratzaileen dokumentazio ofiziala: <https://github.com/ampache/ampache/wiki>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/ampache/ampache>
- YunoHost Denda: <https://apps.yunohost.org/app/ampache>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/ampache_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/ampache_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
edo
sudo yunohost app upgrade ampache -u https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
