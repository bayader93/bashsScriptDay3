#!/bin/bash

echo "Enter Your first name"
read firstname

while [[ $firstname != +([a-zA-Z]) ]]
do
    echo "Enter your first name alphabitcally"
    read firstname
done 

echo "Enter Your last name"
read lastname

while [[ $lastname != +([a-zA-Z]) ]]
do
    echo "Enter your last name alphabitcally"
    read lasttname
done 

echo "Enter Your phone number"
read phone

while [[ $phone != +([0-9]) ]]
do
    echo "Enter your phone number in digit"
    read phone
done 

check = `awk -F : -v phone=$phone 'phone == $3 { print $3 }' employeesdb.txt`

while [-z check]
do
   echo "Your phone number is exist try again"
   read phone
   check = `awk -F : -v phone=$phone 'phone == $3 { print $3 }' employeesdb.txt`
done 

echo "Enter Your department"
read department

while [[ $department != +([a-zA-Z]) ]]
do
    echo "Enter your department alphabitcally"
    read firstname
done 

echo "Enter Your salary"
read salary

while [[ $salary != +([0-9]) ]]
do
    echo "Enter your salary in digit"
    read salary
done 

printf "\n$firstname:$lastname:$phone:$department:$salary" >> employeesdb.txt

echo "Your information inserted successfully"