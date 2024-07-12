sudo mkdir /prueba
ll /prueba/
rm -r /prueba/
sudo rm -r /prueba/
cd /
ls
cd -
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202407_Recu/script_Precondicion.sh
source ~/.bashrc
ls
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo pvcreate /dev/sde1
sudo pvcreate /dev/sdd1
sudo vgcreate vg_temp /dev/sde1
sudo vgextend vg_temp /dev/sdd1
lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo mkswap /dev/mapper/vg_temp-lv_swap 
sudo swapon /dev/mapper/vg_temp-lv_swap
free -h
sudo fdisk -l
sudo fdisk /dev/sdc
sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
free -h
sudo vgs
sudo pvcreate /dev/sdc2
sudo pvs
sudo vgcreate vg_datos /dev/sdc2
sudo lvcreate -L +1.5G vg_datos -n Lv_oracle
sudo sudo lvremove /dev/mapper/vg_datos.lv_oracle
sudo sudo lvremove /dev/mapper/vg_datos-lv_oracle
sudo lvs
sudo lvremove /dev/mapper/vg_datos-lv_oracle
sudo vgremove vg_datos
sudo vgcreate vg_datos /dev/sdc2
sudo vgs
sudo pvs
sudo lvcreate -L +1.5G vg_datos -n lv_multimedia
sudo lvs
sudo lvextend -L +10M /dev/mapper/vg_datos-lv_docker
sudo pvs
sudo swapoff /dev/sdc1
sudo lvextend -L +10M /dev/mapper/vg_datos-lv_docker
sudo lvextend -L +10M /dev/mapper/vg_datos -n lv_docker
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo lvs
sudo swapon /dev/sdc1
free -h
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia 
sudo mdir -p /Multimedia
sudo mkdir -p /Multimedia
cd /
ls
cd -
sudo mount /dev/mapper/vg_datos-lv_multimedia 
df -h
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
df -h
sudo mount /dev/mapper/vg_datos-lv_multimedia /multimedia
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia
sudo vim /usr/local/bin/bordon_check_URL.sh
history
history | grep -E '12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 40 | 41 | 42 | 43 | 44 | 45 | 46 | 47 | 48 | 49 | 50 | 51 | 52 | 53 | 54 | 55 | 56 | 57 | 58 | 59 | 60 | 61 | 62 | 63 | 64 | 65 | 66' | grep -v history | awk -F '  ' '{print $3}'
cd RTA_Examen_20240711/
ll
history | grep -E '12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 40 | 41 | 42 | 43 | 44 | 45 | 46 | 47 | 48 | 49 | 50 | 51 | 52 | 53 | 54 | 55 | 56 | 57 | 58 | 59 | 60 | 61 | 62 | 63 | 64 | 65 | 66' | grep -v history | awk -F '  ' '{print $3}' > Punto_A.sh 
cat Punto_A.sh 
cat /usr/local/bin/bordon_check_URL.sh
cd ..
cat /usr/local/bin/bordon_check_URL.sh
sudo chmod +x /usr/local/bin/bordon_check_URL.sh
sudo ./usr/local/bin/bordon_check_URL.sh UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
sudo bash /usr/local/bin/bordon_check_URL.sh UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
cat /var/log/status_URL.log
sudo apt install tree
tree /tmp/head-check/
cd RTA_Examen_20240711/
ll
history
history | grep -E ' 67 | 73 | 74 | 75 | 76 | 77 | 78 | 79 | 80 | 81 | 82' | grep -v history | awk -F '  ' '{print $3}'  >  Punto_B.sh
cat 
cat Punto_B.sh 
cd ..
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
ll
vim dockerfile 
cat web/index.html 
vim web/index.html 
ll
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
docker exec -it docker web2-bordon cat /web/file/info.txt
vim docker-compose.yml 
cd ..
vim docker-compose.yml 
history
vim dockerfile 
cd ..
cd RTA_Examen_20240711/
ll
history | grep -E ' 96 | 97 | 98 | 99 | 100 | 101 | 102 | 103 | 104 | 105 | 106 | 107 | 108 | 109 | 110 | 111 | 112 | 113 | 114 | 115 | 116 | 117 | 118 | 119 | 120 | 121 | 122 | 123 | 124 | 125 | 126 | 127 | 128 | 129 | 130 | 131 | 132 | 133 | 134 | 135 | 136 | 137 | 138 | 139 | 140 | 141 | 142 | 143 | 144 | 145 | 146 | 147 | 148 | 149 | 150 | 151 | 152 | 153 | 154 | 155 | 156 ' | grep -v history | awk -F '  ' '{print $3}'  >  Punto_C.sh
cat Punto_C.sh 
cat Punto_A.sh 
cat Punto_B.sh 
cat Punto_C.sh 
cd ..
sudo ssh-keygen 
cat .ssh/id_rsa.pub > .ssh/authorized_keys
sudo cat .ssh/id_rsa.pub >> .ssh/authorized_keys
sudo cat .ssh/id_rsa.pub >> .ssh/authorizedkeys
cat .ssh/authorizedkeys
ls -l
cd .ssh/
ls -l .ssh/
ll
ls -l
ls -l .ssh/
ssh-keygen
ls - .ssh/
cd .ssh/
ll
cat id_rsa.pub
cd ..
cat .ssh/id_rsa.pub >> .ssh/authorizedkeys
cd UTN-FRA_SO_Examenes/202407_Recu/ansible/
ll
vim playbook.yml 
vim roles/2PRecuperatorio/tasks/main.yml 
ll roles/2PRecuperatorio/
mkdir roles/2PRecuperatorio/templates
vim roles/2PRecuperatorio/templates/template_01.j2
ansible-playbook -i inventory/hosts playbook.yml - 127.0.0.1
ansible-playbook -i inventory/hosts playbook.yml
cat /tmp/alumno/datos.txt 
ansible-galaxy role init instalar-tools_bordon
ll
rm -r instalar-tools_bordon/
cd roles/
ansible-galaxy role init instalar-tools_bordon
ll
cd ..
vim roles/instalar-tools_bordon/tasks/main.yml 
tmux --version
vim roles/instalar-tools_bordon/tasks/main.yml 
ansible-galaxy role init instalar-tools_bordon
ll
rm -r instalar-tools_bordon/
ansible-playbook -i inventory/hosts playbook.yml
tmux --version
cat roles/instalar-tools_bordon/tasks/main.yml 
vim roles/instalar-tools_bordon/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/instalar-tools_bordon/tasks/main.yml 
vim playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml
tmux --version
vim playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/instalar-tools_bordon/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/instalar-tools_bordon/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
sudo ansible-playbook -i inventory/hosts playbook.yml
tmux --version
history
vim roles/instalar-tools_bordon/tasks/main.yml 
sudo ansible-playbook -i inventory/hosts playbook.yml
cd ..
history
speedtest
dsad
tmux
cd RTA_Examen_20240711/
ll
history | grep -E '  172 | 173 | 174 | 175 | 176 | 177 | 178 | 179 | 180 | 181 | 182 | 183 | 184 | 185 | 186 | 187 | 188 | 189 | 190 | 191 | 192 | 193 | 194 | 195 | 196 | 197 | 198 | 199 | 200 | 201 | 202 | 203 | 204 | 205 | 206 | 207 | 208 | 209 | 210 | 211 | 212 | 213 | 214 | 215 | 216 | 217 | 218 | 219 | 220 | 221 | 222 | 223 | 224 | 225 | 226 | 227 | 228 | 229 | 230 | 231 | 232  ' | grep -v history | awk -F '  ' '{print $3}'  >  Punto_D.sh
cat Punto_D.sh 
cd ..
mkdir repo_2parcial
ll
cp RTA_Examen_20240711/ repo_2parcial/
cp RTA_Examen_20240711 repo_2parcial/
cp RTA_Examen_20240711 repo_2parcial
cd repo_2parcial/
cp ../RTA_Examen_20240711/ .
cp -r ../RTA_Examen_20240711/ .
ll
cd RTA_Examen_20240711/
ll
cat Punto_A.sh 
ll
cd ..
ll
cd repo_2parcial/
cp -r ../UTN-FRA_SO_Examenes/202407_Recu/
cp -r ../UTN-FRA_SO_Examenes/202407_Recu/ .
ll
cd ..
history -a
$HOME/.bash_history
cd ..
$HOME/.bash_history
sudo $HOME/.bash_history
cd LB/
sudo $HOME/.bash_history
tree repo_2parcial/
cd repo_2parcial/
git init
git commit -m "first commit"
git add .
git commit -m "first commit"
git config --global user.name LucianoBDN
git config --global user.email luciano.bordon438@gmail.com
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:LucianoBDN/UTNFRA_SO_Recu_2do_Parcial_Bordon.git
git push -u origin main
cd ..
cat /tmp/alumno/datos.txt 
cd UTN-FRA_SO_Examenes/202407_Recu/_checks/
./check_A.sh 
./check_B.sh 
./check_C.sh 
cd ..
cat docker/docker-compose.yml 
history | grep info
cat docker/web/file/info.txt 
cd docker/
docker ps
docker stop 119cd0a83fd3
docker stop 9b9c040edb42
docker compose up
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
cat dockerfile 
ll
ll web/
ll web/file/
rm web/file/docker-compose.yml 
ll web/file/
history | grep docker
cat docker-compose.yml 
docker ps
docker compose up -d
docker exec -it docker-nginx-1 bash
cd ..
ansible
cd ansible/
cat playbook.yml 
cat README.md 
ansible-playbook -i inventory/hosts playbook.yml
cat roles/2PRecuperatorio/tasks/main.yml 
cat roles/instalar-tools_bordon/tasks/main.yml 
cat /tmp/alumno/datos.txt 
cd ..
ll
