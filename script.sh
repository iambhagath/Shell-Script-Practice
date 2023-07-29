#!/bin/bash
# GNU bash, version 4.4.20
echo ---if-else-fi----
v=a
if [[ $v == a ]]; 
then echo "u are right....."; 
else echo "wrong....."; fi
#------------------

echo ----elif-----
if [[ $v == c ]]; 
then echo "u are right....."; 
elif [[ $v != b ]];
then echo "v not equals b";
else echo "v wrong....."; fi
#------------------

#echo ---\c cursur on same line---
# --- -e for input text , /c for input on same lile 
echo -e "Enter file name : \c"
read file_n
# ---- -f to check regular file exits or not ,-e any file exits or not ---
# -- - d to check directories --
if [ -f $file_n ]
then echo "file found"
else echo "not found"; fi





