#!/bin/bash
echo "Iniciando a execucao do script..."

echo "Criando pastas, grupos e usuarios...."
mkdir publico
mkdir adm
mkdir ven
mkdir sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -s /bin/bash -m -p $(openssl passwd -5 123456) -G GRP_ADM -e 03/03/2024
useradd maria -s /bin/bash -m -p $(openssl passwd -5 123456) -G GRP_ADM -e 03/03/2024
useradd joao -s /bin/bash -m -p $(openssl passwd -5 123456) -G GRP_ADM -e 03/03/2024

useradd debora -s /bin/bash -m -p $(openssl passwd -5 123456) -G GRP_VEN -e 03/03/2024
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -5 123456) -G GRP_VEN -e 03/03/2024
useradd roberto -s /bin/bash -m -p $(openssl passwd -5 123456) -G GRP_VEN -e 03/03/2024

useradd josefina -s /bin/bash -m -p $(openssl passwd -5 123456) -G GRP_SEC -e 03/03/2024
useradd amanda -s /bin/bash -m -p $(openssl passwd -5 123456) -G GRP_SEC -e 03/03/2024
useradd rogerio -s /bin/bash -m -p $(openssl passwd -5 123456) -G GRP_SEC -e 03/03/2024

echo "Inserindo formas de seguranca de senha...."
passwd carlos -e
passwd maria -e
passwd joao -e
passwd debora -e
passwd sebastiana -e
passwd roberto -e
passwd josefina -e
passwd amanda -e 
passwd rogerio -e

echo "Alterando configuracoes de pastas..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 777 /publico
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "Finalizado." 