# Intro
This project is a simple docker-compose to quickly get you started with AnsibleForms.
The docker compose will spin up the mysql database and grab the latest AnsibleForms image from docker hub.
It will install everything with defaults and present a dummy playbook as well as a demo forms.json file.
The Ansibleforms image comes with Ansible and Python3 (and some galaxy collections), so apart from docker and docker compose there are no prerequisites.

# How to Install
The following steps are extremely simple.  Now I know some linux flavors need some extra steps to get docker-cd and docker-compose installed, but that is outside of this scope.  The commands assume redhat/centos and use yum as package installer, obviously you are free of choice and you can easily go for ubuntu/debian and use apt-get.
## Choose a location where to install this
```
mkdir /srv/apps
cd /srv/apps
```
## Grab the docker compose from github
```
yum install -y git
‌‌git init
git clone https://github.com/ansibleguy76/ansibleforms-docker.git
```
## Check if the download worked and enter the project
```
cd ansibleforms-docker
```
## Install docker-cd
**Note** : In case you use centos7, you must add the repository for docker first.
```
# For CentOS7 only !
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```
## Install and start docker
```
yum install -y docker-ce docker-ce-cli containerd.io docker-compose
systemctl start docker
```
## Start the containers with docker compose
```
docker-compose up -d
```
## Test the application
- Surf to : https://your_ip:8443
- Login with admin / AnsibleForms!123
- Next steps :
  - Start creating your forms by changing the forms.yaml file (https://github.com/ansibleguy76/ansibleforms/wiki)
  - Add your own playbooks under the `data/playbooks/` folder
  - Add ldap connection
  - Add users and groups
  - Add AWX connection
  - Add credentials for custom external connections such as other mysql servers or credentials for rest api's
# Next steps
## How to stop and kill the application
**Note** : Stopping the containers will not remove your data.  Your forms.yaml and database will remain intact.
```
# start docker
docker-compose down --rmi all
```
## How to tune
You can tune ansibleforms of course to your needs.  Check out the `.env` file where some environment variables are defined, such as the password for the mysql database.  You can also tune the local ports for the mysql as well as the webapplication.  For more information about extra environment variables and customization.  Read the wiki page (https://github.com/ansibleguy76/ansibleforms/wiki).  
**Note** : Path related variables such as certificates, logs and playbooks is best left to defaults in a docker environment as we use a single mount bind to mount all the persistent data inside the docker container.
## Where is my data ?
Your data is under the `.\data` folder and lives outside the container to maintain persistency.  The data folder is pre-populated with some sample files and should be modified to hold your own `playbooks` and `forms.yaml` file.
You will find the following structure there:
- **certificates/** : Holds https certificates (self signed), replace if you want
- **playbooks/** : Holds your ansible playbooks
- **logs/** : Holds the application logs files
- **db/** : Holds the mysql database
- **forms.yaml** : The file that describes your forms.
# Still a bit confused and in need for help ?
Reach out to me at info@ansibleguy.com
