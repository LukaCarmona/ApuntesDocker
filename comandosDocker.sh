# crear una red:
docker network create nombre-red
# docker network create redPrueba-red

# mysql:
docker run -dp 3306:3306 --name nombre-sql -v /${PWD}/mysql:/var/lib/mysql --network nombre-red -e MYSQL_ROOT_PASSWORD="pass_root" mysql
# docker run -dp (el que nos diga mikel o 3306):3306 --name nombre-sql -v /${PWD}/mysql:/var/lib/mysql --network redPrueba-red -e MYSQL_ROOT_PASSWORD="pass_root" mysql
                                         # externo: /${PDW}/ejemplo:
# Al estar en windos se usa PWD para usar la ruta correcta, el ${} lo que hace es que se ejecute ese comando en la ruta que se escriba

# php-apache:
docker run -dp 80:80 --name nombre-apache -v /${PWD}/apache:/var/www/html --network nombre-red php:8.2-apache
# docker run -dp (el que nos diga mikel o 80):80 --name nombre-apache -v /${PWD}/apache:/var/www/html --network redPrueba-red php:8.2-apache
                                             # externo: /${PDW}/ejemplo:
# phpmyadmin:
docker run -dp 8080:80 --name nombre-pma --network nombre-red --link nombre-sql:db phpmyadmin 
# docker run -dp (el que nos diga mikel o 8080):80 --name nombre-pma --network nombre-red --link nombre-sql:db phpmyadmin 
