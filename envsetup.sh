#!/bin/bash

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python3 -m venv env
fi

echo $PWD
echo "Env Setup complete"
source env/bin/activate

# echo "Requeriments Install By Pip Start"

# pip3 install -r backend/requirements.txt

# echo "Requeriments Install By Pip Success"

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

echo "Log Folder created done"

sudo chmod -R 777 logs
echo "Env Setup Finish
