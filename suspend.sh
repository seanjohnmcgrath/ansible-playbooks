#!/bin/bash
service ssh --full-restart
ansible-playbook -l localhost ansible-playbooks/suspend.yml
