
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/django-todo/nginx/nginx.conf /etc/nginx/sites-available/todoApp
sudo ln -s /etc/nginx/sites-available/todoApp /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/todoApp /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx

