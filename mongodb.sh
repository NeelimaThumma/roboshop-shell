echo -e "\e[33m Copy mongodb repo file \e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo &>>/tmp/roboshop.log

echo -e "\e[33m Installing the webserver \e[0m"
dnf install mongodb-org -y &>>/tmp/roboshop.log

sed -i -e 's/127.0.0.0/0.0.0.0/' /etc/mongodb.conf
echo -e "\e[33m Start the services \e[0m"
# update the conf file /etc/mongod.conf
systemctl enable mongod &>>/tmp/roboshop.log
systemctl restart mongod &>>/tmp/roboshop.log

