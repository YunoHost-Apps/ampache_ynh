#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="libav-tools|ffmpeg"

extra_pkg_dependencies="php7.3-mysql php7.3-curl php7.3-simplexml php7.3-gd"
# php7.3-gmp php7.3-dom php7.3-pcre php7.3-spl php7.3-simplexml php7.3-ctype php7.3-date php7.3-iconv php7.3-curl php7.3-gd  php7.3-mbstring php7.3-libxml php7.3-xmlwriter php7.3-xmlreader

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

# Execute a command with Composer
#
# usage: ynh_composer_exec [--phpversion=phpversion] [--workdir=$final_path] --commands="commands"
# | arg: -v, --phpversion - PHP version to use with composer
# | arg: -w, --workdir - The directory from where the command will be executed. Default $final_path.
# | arg: -c, --commands - Commands to execute.
ynh_composer_exec () {
	# Declare an array to define the options of this helper.
	local legacy_args=vwc
	declare -Ar args_array=( [v]=phpversion= [w]=workdir= [c]=commands= )
	local phpversion
	local workdir
	local commands
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"
	workdir="${workdir:-$final_path}"
	phpversion="${phpversion:-7.0}"

	COMPOSER_HOME="$workdir/.composer" \
		php${phpversion} "$workdir/composer.phar" $commands \
		-d "$workdir" --quiet --no-interaction
}

# Install and initialize Composer in the given directory
#
# usage: ynh_install_composer [--phpversion=phpversion] [--workdir=$final_path] [--install_args="--optimize-autoloader"]
# | arg: -v, --phpversion - PHP version to use with composer
# | arg: -w, --workdir - The directory from where the command will be executed. Default $final_path.
# | arg: -a, --install_args - Additional arguments provided to the composer install. Argument --no-dev already include
ynh_install_composer () {
	# Declare an array to define the options of this helper.
	local legacy_args=vwa
	declare -Ar args_array=( [v]=phpversion= [w]=workdir= [a]=install_args=)
	local phpversion
	local workdir
	local install_args
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"
	workdir="${workdir:-$final_path}"
	phpversion="${phpversion:-7.0}"
	install_args="${install_args:-}"

	curl -sS https://getcomposer.org/installer \
		| COMPOSER_HOME="$workdir/.composer" \
		php${phpversion} -- --quiet --install-dir="$workdir" \
		|| ynh_die "Unable to install Composer."

	# update dependencies to create composer.lock
	ynh_composer_exec --phpversion="${phpversion}" --workdir="$workdir" --commands="install --no-dev $install_args" \
		|| ynh_die "Unable to update core dependencies with Composer."
}

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
