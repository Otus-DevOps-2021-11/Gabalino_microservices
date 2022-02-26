# Gabalino_microservices
Gabalino microservices repository

__Docker__
```bash
# Дата создания рбраза
docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.Names}}"
# Занятое дисковое пространство
docker system df
# Удалить все незапущенные контейнеры
docker kill $(docker ps -q)
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
__Git__
```
git checkout -b gitlab-ci-1
git remote add gitlab http://<your-vm-ip>/homework/example.git
git push gitlab gitlab-ci-1
```
