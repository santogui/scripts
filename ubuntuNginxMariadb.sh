# Script para criar uma instancia com as seguinte configurações
# Servidor web: Nginx
# Banco de dados: Mariadb
# Liguagem de programação: Python
#
# Autor: oliveiraZandler
# Data: 03/003/2015
#vr. 0.0.1

# Remove apache e limpa chache
sudo apt-get purge apache2*
sudo apt-get autoremove -y

# Instala nginx
sudo apt-get install nginx-full

# inicia nginx
sudo service nginx start

# Teste nginx
echo 'Teste de configuracao básica do nginx: '
sudo nginx -t

# reinicia nginx
echo ' Reinicia nginx para termos certeza:'
sudo service ngonx restart

# Remove Mysql par ainstalação do MriaDB
echo ' Removendo Mysql do sistema: '
sudo apt-get remove mysql*
sudo apt-get autoremove

# Instala Mariadb
echo ' Instalando MariaDB: '
sudo apt-get install mariadb-server maria-client -y

# Verifica status do MAriaDB
echo ' Veja abaixo se o MariaDB está rodando: '
sudo service mysql status


# Atualiza S.O
echo ' Atualizando sistema operacional
sudo apt-get update


