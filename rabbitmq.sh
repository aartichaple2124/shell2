cp rabbitmq.repo /etc/yum.repos.d/

dnf install rabbitmq-server -y

systemctl enable rabbitmq-server
systemctl restart rabbitmq-server

rabbitmqctl add_user roboshop roboshop123
rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*"