#!/bin/bash


echo "Criando diretorios "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando grupos"

groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "Criando usuarios"

adduser carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -crypt 123456789) -G grp_adm
adduser maria -c "Maria Joana" -m -s /bin/bash -p $(openssl passwd -crypt 123456789) -G grp_adm
adduser joao -c "Joao Vitor" -m -s /bin/bash -p $(openssl passwd -crypt 123456789) -G grp_adm

adduser debora -c "Debora Souza" -m -s /bin/bash -p $(openssl passwd -crypt 123456789) -G grp_ven
adduser sebastiana -c "Sebastiana Mastins" -m -s /bin/bash -p $(openssl passwd -crypt 123456789) -G grp_ven
adduser roberto -c "Roberto Marinho" -m -s /bin/bash -p $(openssl passwd -crypt 123456789) -G grp_ven

adduser josefina -c "Josefina Teodoro" -m -s /bin/bash -p $(openssl passwd -crypt 123456789) -G grp_sec
adduser amanda -c "Amanda Oliveira" -m -s /bin/bash -p $(openssl passwd -crypt 123456789) -G grp_sec
adduser Rogerio -c "Rogerio Delgado" -m -s /bin/bash -p $(openssl passwd -crypt 123456789) -G grp_sec


echo "Especificando permissoes dos grupos aos diretorios"

chown root:grp_adm /adm
chown root:grp_ven /ven
chown root:grp_sec /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

