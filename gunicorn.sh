echo "###################Gunicorn Process Start #####################"
echo $PWD
echo "Requeriments Install By Pip Start"
pip install -r backend/requirements.txt
echo "Requeriments Install By Pip Success"
echo "Pip Complete"

python3 backend/manage.py makemigrations
python3 backend/manage.py migrate
echo "Migrations done"
sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable gunicorn
sudo systemctl start gunicorn
sudo systemctl status gunicorn
source env/bin/activate
cd /var/lib/jenkins/workspace/django-jenkins-nginx/backend/
echo $PWD
echo "###############Gunicorn Setup Done ############"