#!/bin/bash

# ensure Ansible is installed locally
DIRECTORY="/usr/local/src/ansible"
if [ ! -d "$DIRECTORY" ]; then
	yum -y install git \
		python-jinja2 \
		python-paramiko \
		PyYAML \
		make \
		MySQL-python \
		python-requests

	cd /usr/local/src
	git clone git://github.com/ansible/ansible.git
	cd ansible && make install
fi

# run ansible
ansible-playbook -i aws site.yml