VERSION=6.0.5
PORT=16379
VOLUMES=$PWD/volumes

docker run -d --name redis-${VERSION} -p ${PORT}:6379 -v ${VOLUMES}:/data redis:${VERSION} --appendonly yes