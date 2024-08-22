
#!/bin/bash
#author : Anggarda Saputra Wijaya. anggarda.wijaya@outlook.com. github.com/anggardawjy
#version : 0.1
#about : wordpress docker
docker pull mysql
docker pull wordpress
docker volume create db_data
docker network create mysqlnet
docker run --name cont-mysql -e MYSQL_ROOT_PASSWORD=pass-wordpress -e MYSQL_DATABASE=db_wordpress -e MYSQL_USER=usr_wordpress -e MYSQL_PASSWORD=pass_wordpress -v db_data:/var/lib/mysql --net=mysqlnet -d mysql 
docker run --name cont-wordpress -e WORDPRESS_DB_HOST=cont-mysql:3306 -e WORDPRESS_DB_USER=usr_wordpress -e WORDPRESS_DB_PASSWORD=pass_wordpress -e WORDPRESS_DB_NAME=db_wordpress --net=mysqlnet -p 80:80 -d wordpress
docker container start cont-mysql cont-wordpress
docker update --restart unless-stopped cont-mysql cont-wordpress


