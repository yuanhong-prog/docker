VERSION=6.0.5
PORT=6379
VOLUMES=$PWD/volumes
docker run --name redis-${VERSION} -p ${PORT}:6379 -v ${VOLUMES}/redis.conf:/etc/redis/redis.conf -v ${VOLUMES}:/data -d redis:${VERSION} redis-server /etc/redis/redis.conf
