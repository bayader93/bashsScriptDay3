#!/bin/bash

file= /home/*

for f in $file
do
   tar -czvf "$file" "$file"
done 