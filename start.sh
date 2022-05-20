
#!/bin/bash

echo " Starting MySQL server"
sudo docker compose up -d mysql
sleep 3s
echo " Done."

echo " Starting ElasticSearch server"
sudo docker compose up -d elasticsearch
sleep 3s
echo " Done."

echo " Starting Kibana server"
sudo docker compose up -d kibana
sleep 3s
echo " Done."

echo " Waiting for readiness of dependent servers ..."
./utils/spinner.sh sleep 30s

echo " Starting Liferay server"
sudo docker compose up -d tomcat
sudo docker compose logs --follow tomcat
