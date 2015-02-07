# Wiki Playbook
This Ansible playbook deploys an instance of MediaWiki.

# Installation
## CentOS 7

```
# copy your custom yaml configuration to the server, e.g. to /tmp/wiki.yml

# clone the repo
sudo yum -y install git
git clone https://github.com/Mario-Lopez/Ansible-MediaWiki.git
cd Ansible-MediaWiki/

# deploy to localhost
sudo ./deploy-centos7.sh "@/tmp/wiki.yml"
```