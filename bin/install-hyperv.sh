#!/usr/bin/env bash

if ! type ansible-playbook > /dev/null; then
  sudo apt-add-repository ppa:ansible/ansible -y
  sudo apt update
  sudo DEBIAN_FRONTEND=noninteractive apt-get install ansible -y
fi

sudo apt install -y ssh net-tools git curl

if [ ! -d "./ansible-lemp-ubuntu" ]; then
  git clone https://github.com/igodorogea/ansible-lemp-ubuntu.git
else
  cd ansible-lemp-ubuntu
  git fetch && git reset --hard origin/master
  cd ..
fi

ansible-playbook -i "localhost," -c local --ask-become-pass ansible-lemp-ubuntu/provisioning/playbook.yml --extra-vars '{"ansible_python_interpreter": "/usr/bin/python3", "user": "igodorogea"}'
