# sudo cp -rf testnginx /etc/nginx/sites-available
chmod 710 /var/lib/jenkins/workspace/djangi-jenkins-nginx
# sudo ln -s /etc/nginx/sites-available/testnginx /etc/nginx/sites-enabled
sudo nginx -t
# sudo systemctl start nginx
# sudo systemctl enable nginx
# echo "Nginx has been started"
sudo systemctl restart nginx
sudo systemctl restart gunicorn
sudo systemctl status nginx
echo "Setup Done"