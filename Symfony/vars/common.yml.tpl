server:
    packages: [nano, vim, curl]
    timezone: Europe/Bucharest
    locale: en_US.UTF-8

mysql:
    root_password: ''

samba:
    password: Samba@12345
    share_root: /var/www/

apps:
    symfony2:
        mysql_database: symfony2
        mysql_user: symfony2
        mysql_password: 12345
        doc_root_path: /var/www/symfony2/web
        parent_path: /var/www
        root_dir: symfony2
        server_name: symfony2
        name: symfony2
        symfony_version: 2.8
    symfony3:
        mysql_database: symfony3
        mysql_user: symfony3
        mysql_password: 12345
        doc_root_path: /var/www/symfony3/web
        parent_path: /var/www
        root_dir: symfony3
        server_name: symfony3
        name: symfony3
        symfony_version: 3.0