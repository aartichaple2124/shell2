dnf install mongodb-org -y
cp mongo.repo /etc/yum.repos.d/mongo.repo

sed -i 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf

systemctl enable mongod
systemctl restart mongod