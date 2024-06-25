#!/bin/bash

echo "--------------- SCRIPT DE CRIAÇÃO DE IAC ------------------" 

echo "------------ Criando diretórios -------------"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "---------------- Criando grupos ---------------"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "------- Criando usuários e adicionando aos grupos -------- "

useradd carlos -c "Carlos Eduardo" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria Antonia" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João Carlos" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Débora Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Ventura" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Justus" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina Luiza" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Brasa" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Roger" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

echo "------------ Especificando permissões dos diretórios -------------"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "----------------- FIM DE EXECUÇÃO DO SCRIPT ------------------"


