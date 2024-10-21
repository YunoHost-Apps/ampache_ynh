<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Ampache untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/ampache.svg)](https://ci-apps.yunohost.org/ci/apps/ampache/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/ampache.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/ampache.maintain.svg)

[![Pasang Ampache dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ampache)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Ampache secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Ampache is a web based audio/video streaming application and file manager allowing you to access your music & videos from anywhere, using almost any internet enabled device.

### Features

 * Config for high quality streaming with high bandwith
 * Quick loading for mobile devices with potential low bandwith
 * Integrate with YunoHost users - same username and password
 * Allow one user to be the administrator (set at the installation)

**Versi terkirim:** 6.6.4~ynh1

**Demo:** <https://ampache.org/demo.html>

## Tangkapan Layar

![Tangkapan Layar pada Ampache](./doc/screenshots/visualizer.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <http://ampache.org>
- Dokumentasi admin resmi: <https://github.com/ampache/ampache/wiki>
- Depot kode aplikasi hulu: <https://github.com/ampache/ampache>
- Gudang YunoHost: <https://apps.yunohost.org/app/ampache>
- Laporkan bug: <https://github.com/YunoHost-Apps/ampache_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/ampache_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
atau
sudo yunohost app upgrade ampache -u https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
