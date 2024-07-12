vim dockerfile 
docker run -d -p 80:80 nginx
sudo usermod -a -G Docker LB 
sudo usermod -a -G docker LB 
id
docker run -d -p 80:80 nginx
sudo systemctl restart docker
sudo systemctl status docker
docker run -d -p 80:80 nginx
sudo lvextend -l 100%FREE /dev/mapper/vg_datos-lvdocker
sudo lvextend -l 100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h
sudo systemctl restart docker
sudo systemctl status docker
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
docker run -d -p 80:80 nginx
curl localhost:80
docker build -t web2-bordon .
docker login
docker tag web2-bordon:latest lucianobdn/web2-bordon:latest
docker push lucianobdn/web2-bordon:latest
vim docker-compose.yml 
cd web/
ll
cd file/
ll
cd ..
vim docker-compose.yml 
cpu_model=$(lscpu | grep "Model name" | awk -F: '{print $2}' | sed 's/^ *//g')
cpu_freq=$(lscpu | grep "MHz" | awk -F: '{print $2}' | sed 's/^ *//g')
cpu_freq_ghz=$(echo "scale=2; $cpu_freq / 1000" | bc)
output="CPU Modelo: $cpu_model Frecuencia: ${cpu_freq_mhz}GHz"
vim docker-compose.yml 
modelo=$(cat /proc/cpuinfo | grep "model name" | head -n 1 | awk -F ': ' '{print $2}')
frecuencia=$(cat /proc/cpuinfo | grep "cpu MHz" | head -n 1 | awk -F ': ' '{print $2}')
echo "CPU Modelo: "$modelo" Frecuencia: "$frecuencia"" > info.txt
cat info.txt 
docker compose up -d
curl localhost:8081
docker exec -it docker web2-bordon cat /web/file/info.txt
docker ps
docker stop 119cd0a83fd3
docker ps
vim docker-compose.yml 
vim dockerfile 
docker compose up -d
docker exec -it docker web2-bordon cat /web/file/info.txt
cat web/file/info.txt 
ll
cat info.txt 
rm web/file/info.txt 
mv info.txt web/file/
ll
cd web/
cd file/
cat info.txt 
docker ps
docer stop 119cd0a83fd3
docker stop 119cd0a83fd3
docker compose up -d
