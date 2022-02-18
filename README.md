# Gabalino_microservices
Gabalino microservices repository

__Docker__
```bash
# Дата создания рбраза
docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.Names}}"
# Занятое дисковое пространство
docker system df
# Удалить все незапущенные контейнеры
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
#
docker build -t reddit:latest .
#
docker images -a
#
docker run --name reddit -d --network=host reddit:latest
#
docker logs reddit -f
```
