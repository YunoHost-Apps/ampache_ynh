# Ampache pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/ampache.svg)](https://dash.yunohost.org/appci/app/ampache) ![](https://ci-apps.yunohost.org/ci/badges/ampache.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/ampache.maintain.svg)  
[![Installer Ampache avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ampache)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Ampache rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

[Ampache](http://ampache.org) for the love of music. A web based audio/video streaming application and file manager allowing you to access your music & videos from anywhere, using almost any internet enabled device.

###features

 * Config for high quality streaming with high bandwith
 * Quick loading for mobile devices with potential low bandwith
 * Integrate with YunoHost users - same username and password
 * Allow one user to be the administrator (set at the installation)

**Version incluse :** 5.2.1~ynh1



## Captures d'écran

![](./doc/screenshots/visualizer.png)

## Avertissements / informations importantes

## Limitations

* Also, the SSO authentication not fully working from user panel, we have to work about this. In fact, it can disrupt external Ampache clients like Subsonic.

## Additionnal informations

### Getting started

 * **Add your first catalog to load music files**
   * Go to *Admin panel* ![](https://raw.githubusercontent.com/ampache/ampache/develop/themes/reborn/images/icons/icon_admin.png)
   * Click on *Add a Catalog*
   * Fill up fields and click *Add Calalog*
   * Next, enjoy :)

 * **Update a catalog for load new music files**
   * Go to *Admin panel* ![](https://raw.githubusercontent.com/ampache/ampache/develop/themes/reborn/images/icons/icon_admin.png)
   * Click on *Show Catalogs*
   * Select *Update* in *Actions* list and click *Go*

 * **Change interface Language**
   * Go to *Preferences panel* ![](https://raw.githubusercontent.com/ampache/ampache/develop/themes/reborn/images/icons/icon_edit.png)
   * Click on *Interface*
   * Change *Language* field

### Ampache on mobile devices

 * [For Android](https://play.google.com/store/apps/details?id=com.antoniotari.reactiveampacheapp)
 * [For iOS](http://iampache.com/)

 * Full list of existings clients : https://github.com/ampache/ampache/wiki/Clients

## Documentations et ressources

* Documentation YunoHost pour cette app : https://yunohost.org/app_ampache
* Signaler un bug : https://github.com/YunoHost-Apps/ampache_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/ampache_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
ou
sudo yunohost app upgrade ampache -u https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps