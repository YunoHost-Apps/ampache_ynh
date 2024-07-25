<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Ampache pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/ampache.svg)](https://ci-apps.yunohost.org/ci/apps/ampache/) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/ampache.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/ampache.maintain.svg)

[![Installer Ampache avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ampache)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Ampache rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Ampache est une application Web de streaming audio/vidéo et un gestionnaire de fichiers vous permettant d'accéder à votre musique et vos vidéos de n'importe où, en utilisant presque n'importe quel appareil compatible Internet.

### Caractéristiques

  * Configuration pour un streaming de haute qualité avec une bande passante élevée
  * Chargement rapide pour les appareils mobiles avec une bande passante potentiellement faible
  * Intégration avec les utilisateurs YunoHost - mêmes nom d'utilisateur et mot de passe
  * Autoriser un utilisateur à être l'administrateur (défini lors de l'installation)

**Version incluse :** 6.5.0~ynh1

**Démo :** <https://ampache.org/demo.html>

## Captures d’écran

![Capture d’écran de Ampache](./doc/screenshots/visualizer.png)

## Documentations et ressources

- Site officiel de l’app : <http://ampache.org>
- Documentation officielle de l’admin : <https://github.com/ampache/ampache/wiki>
- Dépôt de code officiel de l’app : <https://github.com/ampache/ampache>
- YunoHost Store : <https://apps.yunohost.org/app/ampache>
- Signaler un bug : <https://github.com/YunoHost-Apps/ampache_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/ampache_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
ou
sudo yunohost app upgrade ampache -u https://github.com/YunoHost-Apps/ampache_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
