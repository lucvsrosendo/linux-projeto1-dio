 GNU nano 6.2                                                                                                       iacl.sh *                                                                                                        
#!/bin/bash

sudo echo "Criando diretórios..."

sudo  mkdir /publico
sudo mkdir /adm
sudo  mkdir /ven
sudo mkdir /sec

sudo echo "Criando grupos de usuários..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

sudo echo "Criando usuários..."

sudo useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_ADM
sudo useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)    -G GRP_ADM
sudo useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)     -G GRP_ADM
sudo useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)     -G GRP_VEN
sudo useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)    -G GRP_VEN
sudo useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)      -G GRP_VEN
sudo useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123)     -G GRP_SEC
sudo useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123)        -G GRP_SEC
sudo useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123)       -G GRP_SEC

sudo echo "Adicionando usuários aos grupos..."

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec
sudo chmod 777 /publico

sudo echo "Fim..."

