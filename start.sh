
#!/bin/bash

echo " Setting host configuration"
# to avoid elasticsearch to crash
sudo sysctl -w vm.max_map_count=262144

echo " Starting MySQL server"
sudo docker compose up -d lc74-mysql
sleep 3s
echo " Done."

echo " Starting ElasticSearch server"
sudo docker compose up -d lc74-elasticsearch
sleep 3s
echo " Done."

#echo " Starting Kibana server"
#sudo docker compose up -d lc74-kibana
#sleep 3s
#echo " Done."

echo " Waiting for readiness of dependent servers ..."
./utils/spinner.sh sleep 30s

echo " Starting Liferay server"
sudo docker compose up -d lc74-liferay
sudo docker compose logs --follow lc74-liferay
