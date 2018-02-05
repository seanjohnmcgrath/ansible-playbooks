#!/bin/bash
service ssh --full-restart
ansible-playbook -l $1 ansible-playbooks/input.yml -e "foo=$2" 
