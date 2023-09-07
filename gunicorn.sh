echo "###################Gunicorn Process Start #####################"
echo $PWD
echo "Requeriments Install By Pip Start"
pip install -r backend/requirements.txt
echo "Requeriments Install By Pip Success"
echo "Pip Complete"

python3 backend/manage.py makemigrations
python3 backend/manage.py migrate
python3 backend/manage.py collectstatic -- no-input

echo "Migrations done"

# cd /var/lib/jenkins/workspace/djangi-jenkins-nginx

sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

# echo "$USER"
# echo "$PWD"



sudo systemctl daemon-reload
# # echo "Gunicorn has started."
sudo systemctl enable gunicorn
sudo systemctl start gunicorn
# # echo "Gunicorn has been enabled."

# sudo systemctl restart gunicorn
sudo systemctl status gunicorn
source env/bin/activate
cd /var/lib/jenkins/workspace/django-jenkins-nginx/backend/
echo $PWD
echo "###############Gunicorn Setup Done ############"