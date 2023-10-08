bash $HOME/ason/setup/ptoject.sh
mkdir -p src/web
cd src/web
ason py init
source $(pwd)/.venv/bin/activate
pip3 install flask
mkdir -p templates
mkdir -p static
