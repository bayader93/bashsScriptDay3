#!/bin/bash

file= /home/*

for f in $file
do
   test -f "$file" &&  chmod +x "$file"
done 
