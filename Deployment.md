# Hosting de web con php y MySQL
## Crear red bridge (bridge son las únicas que se pueden crear)
`````
docker network create my-red
`````
## Instalar MySQL con puerto, volumen y red 
````
docker run -d --name mysql_server01 -p 5100:3306 -e MYSQL_ROOT_PASSWORD=1234 --network my-red -v ${PWD}/mysql-data:/var/lib/mysql mysql:latest 
````
## Instalar apache con php y mysqli // clase para conectar a BDD MySQL
crear dockerfile  
``
docker build -t apache-php-mysqli .  
``
docker run -d -p 80:80 --name my-apache-php-mysqli -v ${PWD}:/var/www/html apache-php-mysqli  
``
## Instalar PhpMyAdmin 
``
docker run --name phpmyadmin -d -e PMA_ARBITRARY=1 -p 9000:80 --network my-red phpmyadmin
``
### Conectar una red a un container existente o se puede directamente asociar durante el proceso de creación del contenedor
``
docker network connect my-red <nombre_contenedor>
``