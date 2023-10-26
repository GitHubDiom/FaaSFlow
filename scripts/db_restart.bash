
docker rm -f $(docker ps -aq)

sudo systemctl daemon-reload
sudo systemctl restart docker

docker run -itd -p 5984:5984 -e COUCHDB_USER=openwhisk -e COUCHDB_PASSWORD=openwhisk --name couchdb couchdb

python3 couchdb_starter.py
docker-compose -f kafka/docker-compose.yml up -d