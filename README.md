# Intro
This project is a simple docker-compose to quickly get you started with AnsibleForms.
The docker compose will spin up the mysql database and grab the latest AnsibleForms image from docker hub.
It will install every thing with default and present a dummy playbook and as well as demo forms.json file.

# How to Install
```
# create holder folder (can be custom)
mkdir /srv/apps
cd /srv/apps

# grab the code from github (yum = assumption of centos)
yum install -y git
‌‌git init
git clone https://github.com/ansibleguy76/ansibleforms-docker.git

# install docker
yum install docker-ce docker-ce-cli containerd.io

# enter the app project
cd ansibleforms

# start docker
docker-compose up -d
```
# How to stop and kill
Stopping the
```
# start docker
docker-compose down --rmi all
```
# Where is my data ?
Your data is under the `.\data` folder.
You will find the following folders there:
- **certificates** : Holds https certificates (self signed), replace if you want
- **playbooks** : Holds your ansible playbooks
- **logs** : Holds the application logs files
- **db** : Hold the mysql database
- **forms.json** : The file that describes your forms.

# How to continue from here
Well, generally you are all set to start.  
- Surf to : https://youip:8443
- First time : create the database and tables
- Login with admin / AnsibleForms!123
- Start creating your forms by changing the forms.json file

# Confused and need help ?
Reach out to me at info@ansibleguy.com
