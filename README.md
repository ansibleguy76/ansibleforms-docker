# Intro
This project is a simple docker-compose to quickly get you started with AnsibleForms.
The docker compose will spin up the mysql database and grab the latest AnsibleForms image from docker hub.
It will install everything with defaults and present a dummy playbook as well as a demo forms.yaml file.
The Ansibleforms image comes with Ansible and Python3 (and some galaxy collections), so apart from docker and docker compose there are no prerequisites.

# How to Install
Simply follow the instructions on (https://ansibleforms.com)

# Data Contents
* sample maintenance playbooks
* sample maintenance forms
* dummy.yaml playbook
* sample certificates (https)
* a backup bash script
* sample custom functions to extend Ansible Forms.

# How to use helm chart ?

Example to deploy in a `ansibleforms-dev` namespace :

`helm install --namespace ansibleforms-dev ansibleform .`

To deploy new configs :

`helm upgrade --namespace ansibleforms-dev ansibleform .`
