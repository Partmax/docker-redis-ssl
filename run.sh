cd redis
bash gen-redis-certs.sh
cd ../

# using the base image layer in the redis/tls cert directory
docker build -t example/redis:v7.0.4 -f ./redis/Dockerfile ./

# start redis with ssl see: docker-redis-entrypoint.sh
docker-compose up -d