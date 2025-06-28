[Unit]
Description = Cart Service
[Service]
User=roboshop
Environment=REDIS_HOST=redis.learntechnology.shop
Environment=CATALOGUE_HOST=catalogue.learntechnology.shop
Environment=CATALOGUE_PORT=8080
ExecStart=/bin/node /app/server.js
SyslogIdentifier=cart

[Install]
WantedBy=multi-user.target