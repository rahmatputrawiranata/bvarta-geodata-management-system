
cd app

rm -rf dist

rm -rf storages

cp .env.production .env

cd ../docker

docker-compose build

docker-compose up -d

docker exec -it bvarta-geodata-management-system-app-1 yarn migrate-mongo up