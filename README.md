# Intro
This project is a simple docker-compose to quickly get you started with AnsibleForms.
The docker compose will spin up the mysql database and grab the latest AnsibleForms image from docker hub.
It will install everything with defaults and present a dummy playbook as well as a demo forms.json file.
The Ansibleforms image comes with Ansible and Python3 (and some galaxy collections), so apart from docker and docker compose there are no prerequisites.

# How to Install
The following steps are extremely simple.  Now I know some linux flavors need to some extra steps to get docker-cd and docker-compose installed, but that is outside of this scope.  The commands assume redhat/centos and use yum as package installer, obviously you are free of choice and you can easily go for ubuntu/debian and use apt-get.
```
# create holder folder (can be custom)
mkdir /srv/apps
cd /srv/apps

# grab the code from github (yum = assumption of centos)
yum install -y git
‌‌git init
git clone https://github.com/ansibleguy76/ansibleforms-docker.git

# install and start docker (yum = assumption of centos)
yum install -y docker-ce docker-ce-cli containerd.io docker-compose
systemctl start docker

# enter the app project
cd ansibleforms-docker

# start docker compose
docker-compose up -d
```
# How to stop and kill
Stopping the containers will not remove your data.  Your forms.json and database will remain intact.
```
# start docker
docker-compose down --rmi all
```
# How to tune
You can tune this of course to your needs.  Check out the `.env` file where the some environment variables are defined, such as the password for the mysql database.  You can also tune the local ports for the mysql as well as the webapplication.  For more information about extra environment variables and customization.  Read the wiki page (https://github.com/ansibleguy76/ansibleforms/wiki)
# Where is my data ?
Your data is under the `.\data` folder.  These are obviously sample files and should contain your own playbooks and forms.json file.
You will find the following structure there:
- **certificates/** : Holds https certificates (self signed), replace if you want
- **playbooks/** : Holds your ansible playbooks
- **logs/** : Holds the application logs files
- **db/** : Holds the mysql database
- **forms.json** : The file that describes your forms.

# How to continue from here
Well, generally you are all set to start.  
- Surf to : https://your_ip:8443
- Create database and tables : The first time you will be prompted to create the database and tables.
- Login with admin / AnsibleForms!123
- Next steps :
  - Start creating your forms by changing the forms.json file (https://github.com/ansibleguy76/ansibleforms/wiki)
  - Add your own playbooks under the `data/playbooks/` folder
  - Add ldap connection
  - Add users and groups
  - Add AWX connection
  - Add credentials for custom external connections such as other mysql servers or credentials for rest api's

# Still a bit confused and in need for help ?
Reach out to me at info@ansibleguy.com
