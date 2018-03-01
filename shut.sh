#!/bin/sh
/home/sean/input.sh local "'/usr/local/bin/sshpass -P local -p pfsense ssh 192.168.113.3 halt -p'"
ansible-playbook -l workerservers ansible-playbooks/workershut.yml;ansible-playbook -l master ansible-playbooks/mastershut.yml
/home/sean/input.sh local "'/usr/local/bin/sshpass -p Fr33r1d3r ssh 192.168.113.9 halt -p'"
