#!/bin/bash

groupadd aluno
groupadd professor
groupadd gerente

mkdir -p /srv

chown root:gerente /srv

mkdir -p /srv/alunos
mkdir -p /srv/professores

chown root:aluno /srv/alunos
chown root:professor /srv/professores

chmod 751 /srv
chmod 770 /srv/alunos
chmod 770 /srv/professores

useradd -m -d /srv/professores/bruno -g professor -s /bin/bash -G gerente -c "" bruno

useradd -m -d /srv/alunos/joao -g aluno -s /bin/bash -c "" joao
useradd -m -d /srv/alunos/maria -g aluno -s /bin/bash -c "" maria

chage -M 90 joao 
chage -E 2024-12-31 maria
chage -M 90 maria
chage -E 2024-12-31 maria

