#!/bin/bash

ansible-pull -i localhost, -U https://github.com/Siva-Sai-Deepak-Pulipaka/roboshop-ansible.git roboshop.yml -e env=${env} -e role_name=${component} >/opt/ansible.log