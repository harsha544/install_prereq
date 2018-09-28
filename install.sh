echo "Install Docker"
apt update
apt install wget -y
wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/ppc64el/docker-ce_18.03.1~ce-0~ubuntu_ppc64el.deb
apt install libltdl7 -y
dpkg -i docker-ce_18.03.1~ce-0~ubuntu_ppc64el.deb

echo "Install docker-compose"
apt python python-dev -y
cd /tmp/
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install --upgrade pip
pip install docker-compose==1.18
