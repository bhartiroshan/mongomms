#!/bin/bash
echo "192.168.14.100 roshans-macbook-pro.local" >> /etc/hosts
./mongodb-mms-automation-agent --config=local.config >> /var/log/mongodb-mms-automation/automation-agent-fatal.log 2>&1 &
