VERSION=6.0.5
PORT=6379
VOLUMES=$PWD/volumes
PWD=123456
docker run --name redis-${VERSION} -p ${PORT}:6379 -v ${VOLUMES}/redis.conf:/etc/redis.conf -v ${VOLUMES}:/data -d redis:${VERSION} redis-server /etc/redis.conf --appendonly yes --requirepass ${PWD}