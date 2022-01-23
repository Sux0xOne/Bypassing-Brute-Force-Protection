#!/bin/bash

## Create the password List by taking burplist.txt and inserting your account password every other
awk '{print;} NR % 1 == 0 {print "YOUR PASSWORD"; }' burplist.txt > bypassit.txt

## Create the username list, adding "Your Username" and "Target Username" to username.txt

function addName { echo "Your Username " >> username.txt; echo "Target Username" >> username.txt;}

for value in {1..100}
do 
addName
done