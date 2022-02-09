#!/bin/bash

echo "Enter your user id"
read id

while [[ $id != +([A-Za-z]) ]]
do
    echo "Your id is invalid try again"
    read id
done 

check=`awk -F : -v id=$id 'id == $1 { print $1 }' users.txt`

while [[-z check]]
do
   echo "Your id is not exist try again"
   read id
   check=`awk -F : -v id=$id 'id == $1 { print $1 }' users.txt`
done   

oldpass=`awk -F : -v id=$id 'id == $1 { print $2 }' users.txt`

echo "Please enter your old password"
read useroldpass

while [[ $oldpass != $useroldpass ]]
do
    echo "wrong password, try again"
    read useroldpass
done

echo "please enter the new password"
read newpass

sed "s/:$oldpass/:$newpass/g" users.txt > newusers.txt

mv newusers.txt users.txt

echo "Your password updated now"
