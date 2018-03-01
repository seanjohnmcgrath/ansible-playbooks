#!/bin/sh
ansible-playbook -l workerservers ansible-playbooks/workerupgrade.yml;ansible-playbook -l master ansible-playbooks/masterupgrade.yml
