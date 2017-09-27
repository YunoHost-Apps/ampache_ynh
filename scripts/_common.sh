#!/bin/bash

# Copy files to the right place
ampache_ynh_getsources () {
	version=$(cat upstream_version)

	final_path=/var/www/$app
	mkdir -p $final_path/log

	wget -O ../ampache.tar.gz https://github.com/ampache/ampache/archive/$version.tar.gz > /dev/null 2>&1
	tar xvzf ../ampache.tar.gz -C ..  > /dev/null 2>&1
	cp -ar ../ampache-$version/. $final_path

	cp ../conf/ampache.cfg.php $final_path/config/ampache.cfg.php
}

# Change variables in Ampache configuration
ampache_ynh_prepareconfig () {
	ynh_replace_string "yunouser" "$app" $final_path/config/ampache.cfg.php
	ynh_replace_string "yunopass" "$db_pwd" $final_path/config/ampache.cfg.php
	ynh_replace_string "yunobase" "$app" $final_path/config/ampache.cfg.php
	ynh_replace_string "PATHTOCHANGE" "${path}" $final_path/config/ampache.cfg.php
	ynh_replace_string "DOMAINTOCHANGE" "$domain" $final_path/config/ampache.cfg.php
}

# Modify Nginx configuration file and copy it to Nginx conf directory
ampache_ynh_preparenginx () {
	path2=$(if [ "$path" == "/" ] ; then echo "" ; else echo "$path" ; fi)
	ynh_replace_string "PATHTOCHANGE" "${path}" ../conf/nginx.conf*
	ynh_replace_string "PATH2TOCHANGE" "${path2}" ../conf/nginx.conf*
	ynh_replace_string "ALIASTOCHANGE" "$final_path/" ../conf/nginx.conf*
	cp ../conf/nginx.conf /etc/nginx/conf.d/$domain.d/$app.conf
}

# Ampache installation
ampache_ynh_install () {
        ORIPATH=$(pwd)
	cd $final_path
	php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
	php composer-setup.php
	php composer.phar install --prefer-source --no-interaction
	# Set permissions to ampache directory
	chown -R www-data: $final_path
	cd $ORIPATH
}

# Reload Nginx and regenerate SSOwat conf
ampache_ynh_reloadservices () {
	systemctl reload nginx
	ynh_app_setting_set $app skipped_uris "/"
	yunohost app ssowatconf
}

# Pre config ampache
ampache_ynh_doconfig () {
	echo "127.0.0.1 $domain #yunoampache" | tee -a /etc/hosts
	sleep 1
	curl -kL -X POST http://$domain${path%/}/update.php?action=update > /dev/null 2>&1
	sleep 5
	sed '/yunoampache/d' /etc/hosts > /tmp/hosts.tmp
	cp /tmp/hosts.tmp /etc/hosts ; ynh_secure_remove /tmp/hosts.tmp
}
