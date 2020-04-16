# Ampache for YunoHost

[![Integration level](https://dash.yunohost.org/integration/ampache.svg)](https://dash.yunohost.org/appci/app/ampache)  
[![Install Ampache with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=ampache)

> *This package allow you to install Ampache quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
[Ampache](http://ampache.org) for the love of music. A web based audio/video 
streaming application and file manager allowing you to access your 
music & videos from anywhere, using almost any internet enabled device.

**Shipped version:** 4.1.1

## Screenshots

![](http://ampache.org/img/previews/visualizer.jpg)

## Demo

* [YunoHost demo](https://demo.yunohost.org/ampache/)
* [Official demo](http://ampache.org/demo.html)

## Configuration

## Documentation

 * Official documentation: https://github.com/ampache/ampache/wiki
 * YunoHost documentation: There no other documentations, feel free to contribute.

## YunoHost specific features

In addition to Ampache core features, the following are made available with
this package:

 * Config for high quality streaming with high bandwith
 * Quick loading for mobile devices with potential low bandwith
 * Integrate with YunoHost users - same username and password
 * Allow one user to be the administrator (set at the installation)

#### Multi-users support

 * Ampache is connect to Yunohost LDAP
 * No auto SSO yet

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/ampache%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/ampache/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/ampache%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/ampache/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/ampache%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/ampache/)

## Limitations

* Also, the SSO authentication not fully working from user panel, we have to work about this.
In fact, it can disrupt external Ampache clients like Subsonic.

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

## Links

 * Report a bug: https://github.com/YunoHost-Apps/ampache_ynh/issues
 * Ampache website: http://ampache.org/
 * Ampache repository: https://github.com/ampache/ampache
 * YunoHost website: https://yunohost.org/

---

Developers infos
----------------

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/ampache_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
or
sudo yunohost app upgrade ampache -u https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
```
