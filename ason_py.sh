#!/usr/bin/env bash

set -e

if [ $1 = "init" ]; then
    python3 -m venv .venv
    source $(pwd)/.venv/bin/activate
    pip install --upgrade pip
    if [ ! -z $2 ]; then
        if [ $2 = "r" ]; then 
            pip install -r requirements.txt
        fi
    fi
    echo "source ./.venv/bin/activate" >> use.md
# django
elif [ $1 = "django" ]; then
    if [ ! -z $2 ]; then
        if [ $2 = "run" ]; then
            echo ""
        elif [ $2 = "startproject" ]; then
            if [ ! -z $3 ]; then
                django-admin startproject $3
                cd $3
                echo "#!/etc/bin/bash" >> run.sh
                echo "python3 manage.py runserver" >> run.sh
                chmod +x run.sh
            else
                echo "ason py django startproject: no file name"
            fi
        elif [ $2 = "startapp" ]; then
            if [ ! -z $3 ]; then
                python3 manage.py startapp $3
                cd $3
                mkdir static
                mkdir templates
            else
                echo "ason py django startapp: no file name"
            fi
        fi
    else
        echo "ason py django: command not found: $2"
    fi
elif [ $1 = "outlib" ]; then
    pip freeze >> requirements.txt
else
    echo "ason py: command not found: $1"
fi