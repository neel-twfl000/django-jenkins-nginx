sudo cp -rf testnginx /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/testnginx /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx
echo "Setup Done"