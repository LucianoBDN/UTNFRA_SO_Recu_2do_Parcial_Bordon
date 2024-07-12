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
