#!/bin/sh
ansible-playbook -l workerservers ansible-playbooks/workerreboot.yml;ansible-playbook -l master ansible-playbooks/masterreboot.yml
