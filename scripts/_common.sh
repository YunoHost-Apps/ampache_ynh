#!/bin/bash

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

# Install or update the main directory yunohost.multimedia
#
# usage: ynh_multimedia_build_main_dir
ynh_multimedia_build_main_dir () {
	local ynh_media_release="v1.2"
	local checksum="806a827ba1902d6911095602a9221181"

	# Download yunohost.multimedia scripts
	wget -nv https://github.com/YunoHost-Apps/yunohost.multimedia/archive/${ynh_media_release}.tar.gz 

	# Check the control sum
	echo "${checksum} ${ynh_media_release}.tar.gz" | md5sum -c --status \
		|| ynh_die "Corrupt source"

	# Check if the package acl is installed. Or install it.
	ynh_package_is_installed 'acl' \
		|| ynh_package_install acl

	# Extract
	mkdir yunohost.multimedia-master
	tar -xf ${ynh_media_release}.tar.gz -C yunohost.multimedia-master --strip-components 1
	./yunohost.multimedia-master/script/ynh_media_build.sh
}
