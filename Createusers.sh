#!/bin/bash
# This script is to create users for mary, amy and jany
users=("mary" "amy" "jany")
for user in "${users[@]}
do
    id user
    if [[ $? -ne 0 ]]; then
    useradd -s /bin/bash $user
    echo "user ${user} is created succesfully"
    else
    echo "user ${user} already exits"
    fi
done