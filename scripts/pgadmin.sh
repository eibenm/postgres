#!/usr/bin/env bash

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RESET='\033[0m'

function successcolorecho() {
    echo $GREEN"$@"$RESET  
}

function alertcolorecho() {
    echo $YELLOW"$@"$RESET  
}

USERNAME="user@domain.com"
PASSWORD="password"
IP=$(ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}')

successcolorecho "Pgadmin running at http://localhost:5000"
successcolorecho "Pgadmin credentials:"
alertcolorecho "\tUsername: $USERNAME"
alertcolorecho "\tPassword: $PASSWORD"
successcolorecho "Server connection info:"
alertcolorecho "\tHost addess: $IP"
successcolorecho "Database Credentials:"
alertcolorecho "\tUsername: postgres"
alertcolorecho "\tPassword: secret"
