
sudo pacman -Syu

## build utils
# Consult doc for your particular distro
sudo pacman -S base-devel
sudo pacman -S cmake
sudo pacman -S gcc

## ffmpeg
sudo pacman -S ffmpeg

# confirm shell
echo $0
# bash completion
pacman -S bash-completion


####################
# Chromaprint, Build from Source
####################

wget https://github.com/acoustid/chromaprint/releases/download/v1.5.1/chromaprint-1.5.1.tar.gz
wget https://github.com/acoustid/chromaprint/releases/download/v1.5.1/chromaprint-fpcalc-1.5.1-linux-x86_64.tar.gz

tar -xzvf chroma*

cd chromaprint-1.5.1
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TOOLS=ON .
make
sudo make install

##############################
# Chromaprint, distro install
##############################

# if encountering issues with chromaprint build from source
# e.g. https://github.com/acoustid/chromaprint/issues/110 ; or similar
# distro version may be available
# https://archlinux.org/packages/extra/x86_64/chromaprint/

pacman -S chromaprint

#############################
# pyacoustid
#############################

# N.B. depedency => chromaprint

## Update, install python
sudo pacman -S python 
sudo pacman -S python-pip

## python env setup
python -m venv .venv
source .venv/bin/activate

# pip install
pip install --upgrade pip

# pyacoustid install
pip install pyacoustid

# if working in VM with under-resourced tmp directory
# https://askubuntu.com/questions/1326304/cannot-install-pip-module-because-there-is-no-space-left-on-device

mkdir /home/vagrant/tmp
TMPDIR=/home/vagrant/tmp pip install pyacoustid