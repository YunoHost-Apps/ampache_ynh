#!/bin/bash

# Copy files to the right place
ampache_ynh_getsources () {
	final_path=/var/www/$app
	mkdir -p $final_path/log

	ynh_setup_source $final_path

	cp ../conf/ampache.cfg.php $final_path/config/ampache.cfg.php
}

# Change variables in Ampache configuration
ampache_ynh_prepareconfig () {
	ynh_replace_string "yunouser" "$app" $final_path/config/ampache.cfg.php
	ynh_replace_string "yunopass" "$db_pwd" $final_path/config/ampache.cfg.php
	ynh_replace_string "yunobase" "$app" $final_path/config/ampache.cfg.php
	ynh_replace_string "PATHTOCHANGE" "$path_url" $final_path/config/ampache.cfg.php
	ynh_replace_string "DOMAINTOCHANGE" "$domain" $final_path/config/ampache.cfg.php
}

# Ampache installation
ampache_ynh_install () {
        (
		export COMPOSER_HOME=$final_path
		cd $final_path
		php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
		php composer-setup.php
		php composer.phar update --no-interaction --no-dev
		php composer.phar install --prefer-source --no-interaction --no-dev
	)
        # Set permissions to ampache directory
        chown -R www-data: $final_path

}

# Regenerate SSOwat conf
ampache_ynh_reloadservices () {
	ynh_app_setting_set $app skipped_uris "/"
	yunohost app ssowatconf
}

# Pre config ampache
ampache_ynh_doconfig () {
	sleep 1
	ynh_local_curl /update.php?action=update
	sleep 5
}
