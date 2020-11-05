#!/usr/bin/env bash

USERNAME="user@domain.com"
PASSWORD="password"

if [ lsb_release 2>/dev/null ]; then
    IP=$(ifconfig eth0 | grep 'inet ' | awk '{print $2}')
else
    IP=$(ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}')
fi

echo "Pgadmin running at http://localhost:5000"
echo "Pgadmin credentials:"
echo -e "\tUsername: $USERNAME"
echo -e "\tPassword: $PASSWORD"
echo "Server connection info:"
echo -e "\tHost addess: $IP"
echo "Database Credentials:"
echo -e "\tUsername: postgres"
echo -e "\tPassword: secret"
