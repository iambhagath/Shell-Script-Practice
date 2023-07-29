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
# -- -d to check directories --
# --- char special file and video or img or mp3 are block special files
# --- -b for block files , -c for char file
# --- -s non empty or empty 
# --- -r , -w ,-x for files to check read , write , execute
if [ -f $file_n ]
then echo "file found"
else echo "not found"; fi


#--------------------------------
# ---operators--
# & opearator
age=90
# -- also [[ $age -gt 18 && $age -lt 100 ]]  
if [ $age -gt 18 ] && [ $age -lt 100 ]
then echo "valid age"
else echo " age not in range "; fi
# - also & oper
age=110
if [ $age -gt 18 -a $age -lt 100 ]
then echo "valid age"
else echo " age not in range "; fi

# | or opearator
age=110
if [ $age -gt 18 ] || [ $age -lt 100 ]
then echo "valid age"
else echo " age not in range "; fi
## ---also  if [ $age -gt 18 -o $age -lt 100 ]
## ---also  if [[ $age -gt 18 || $age -lt 100 ]]





