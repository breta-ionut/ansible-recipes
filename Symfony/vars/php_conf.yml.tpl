php_conf_dict:
    "5.6":
        repository: ppa:ondrej/php5-5.6
        php_package: php5
        php_fpm_package: php5-fpm 
        php_fpm_service: php5-fpm
        extensions: [php5-cli, php5-mcrypt, php5-mysql, php5-intl, php5-memcached, php5-curl, php5-gd, php5-xdebug]
        pecl_extensions: [mongo]
        tools: [php-pear, php5-dev, libcurl3-openssl-dev]
        conf_path: /etc/php5
        fastcgi_path: unix:/var/run/php5-fpm.sock

    "7.0":
        repository: ppa:ondrej/php
        php_package: php7.0
        php_fpm_package: php7.0-fpm 
        php_fpm_service: php7.0-fpm
        extensions: [php7.0-cli, php7.0-mcrypt, php7.0-mysql, php7.0-intl, php-memcached, php-curl, php7.0-gd, php-xml, php-xdebug]
        pecl_extensions: []
        tools: [php-pear, php7.0-dev, libcurl3-openssl-dev]
        conf_path: /etc/php/7.0
        fastcgi_path: unix:/var/run/php/php7.0-fpm.sock