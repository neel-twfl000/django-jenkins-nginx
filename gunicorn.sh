echo "###################Gunicorn Process Start #####################"
chmod 710 /var/lib/jenkins/workspace/djangi-jenkins-nginx
source env/bin/activate

cd /var/lib/jenkins/workspace/djangi-jenkins-nginx/backend

pip install -r requirements.txt


echo "Pip Complete"

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic -- no-input

echo "Migrations done"

cd /var/lib/jenkins/workspace/djangi-jenkins-nginx

sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"



# sudo systemctl daemon-reload
# echo "Gunicorn has started."
# sudo systemctl enable gunicorn
# sudo systemctl start gunicorn
# echo "Gunicorn has been enabled."

# sudo systemctl restart gunicorn
# sudo systemctl status gunicorn

echo "###############Gunicorn Setup Done ############"