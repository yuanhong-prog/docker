VERSION=5.6.28
PORT=3306
ROOT_PASSWORD=123456

docker run -d -p ${PORT}:3306 --name mysql-${VERSION} -e TZ=Asia/Shanghai -v $PWD/conf:/etc/mysql/conf.d -v $PWD/logs:/var/log/mysql -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=${ROOT_PASSWORD} mysql:${VERSION}