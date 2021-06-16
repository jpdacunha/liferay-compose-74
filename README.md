# liferay-compose-73
Docker compose for non clustered Liferay project (e.g: for development use only)

## Prerequisites
1. Properly install docker
2. Properly install docker-compose

## Quick Start :
1. Setup permissions on sh files
    ```console
     find ./ -name "*.sh" -exec chmod +x {} \;
    ```
2. Setup permissions on sh files

## Tips :
1. Remove all container and volumes create by ++this++ docker compose file 
    ```console
     sudo docker-compose rm -s -v
    ```
2. Manage your containers using portainer
    ```console
     ./liferay-compose-73/utils/portainer-start.sh
    ```
