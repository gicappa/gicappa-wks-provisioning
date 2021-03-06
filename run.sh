sudo apt-get install python-setuptools aptitude git python-dev libxml2-dev libxslt-dev

sudo easy_install pip

cd ~
mkdir -p setup
cd setup
git clone git@github.com:gicappa/gicappa-wks-provisioning.git
cd gicappa-wks-provisioning

sudo pip install -r requirements.txt

echo -e "please make sure to edit the config.json file followed by [ENTER]" && read USELESS_VAR

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules --extra-vars "@config.json"

exit 0
