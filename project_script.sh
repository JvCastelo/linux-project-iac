#!/bin/bash

echo "Deletando usuários, grupos e diretórios..."

userdel -rf carlos

userdel -rf maria

userdel -rf joao

userdel -rf debora

userdel -rf sebastiana

userdel -rf roberto

userdel -rf josefina

userdel -rf amanda

userdel -rf rogerio

groupdel GRP_ADM

groupdel GRP_VEN

groupdel GRP_SEC

rm -rfv /publico

rm -rfv /adm

rm -rfv /ven

rm -rfv /sec

echo "Criando diretórios..."

mkdir /publico /adm /ven /sec

echo "Finalizado!"

echo "Criando grupos..."

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

echo "Finalizado!"

echo "Modificando grupos dos diretórios..."

chown root:GRP_ADM /adm/

chown root:GRP_SEC /sec/

chown root:GRP_VEN /ven/

echo "Finalizado!"

echo "Modificando permissões dos diretórios..."

chmod 777 publico

chmod 770 /adm

chmod 770 /sec

chmod 770 /ven

echo "Finalizado!"

echo "Criando usuários e atribuindo-os aos grupos..."

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP_ADM

useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP_ADM

useradd joao -c "João da Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP_ADM

useradd debora -c "Débora da Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP_VEN

useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP_VEN

useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP_VEN

useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP_SEC

useradd jamanda -c "Amanda da Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP_SEC

useradd rogerio -c "Rogério da Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP_SEC

echo "Script finalizado!"
