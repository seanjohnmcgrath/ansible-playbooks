#!/bin/sh
ansible-playbook -l workerservers ansible-playbooks/workerupdate.yml;ansible-playbook -l master ansible-playbooks/masterupdate.yml
