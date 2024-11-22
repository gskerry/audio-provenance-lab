

## Update, install python
sudo pacman -Syu
sudo pacman -S python
sudo pacman -S python-pip

## convenience utils

# confirm shell
echo $0
# bash completion
pacman -S bash-completion


## python env setup
python -m venv .venv
source .venv/bin/activate

# pip install
pip install --upgrade pip

## pyacoustid install

# (note) Vagrant/VB machines tend to have under-resourced /tmp directories -> failed pip installs 
# Create tmp directory within home. Avoids reconfiguration of virtualbox machine (VBoxManage learning curve, etc)

mkdir /home/vagrant/tmp
TMPDIR=/home/vagrant/tmp pip install pyacoustid