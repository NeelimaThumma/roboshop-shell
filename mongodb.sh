echo -e "\e[33m Copy mongodb repo file \e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo

echo -e "\e[33m Installing the webserver \e[0m"
dnf install mongodb-org -y

echo -e "\e[33m Start the services \e[0m"
# update the conf file /etc/mongod.conf
systemctl enable mongod
systemctl restart mongod

