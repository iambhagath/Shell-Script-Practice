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



# arthematic ops
n1=20
n2=3

echo $(( n1 + n2 ))
echo $(( n1 - n2 ))
echo $(( n1 * n2 ))
echo $(( n1 / n2 ))
echo $(( n1 % n2 ))

echo ''
echo $(expr $n1 + $n2 )
echo $(expr $n1 \* $n2 )

# decimal oprs
n1=20.5
n2=5

echo "$n1+$n2" | bc
echo "$n1*$n2" | bc
echo "scale=2;$n1/$n2" | bc

num=27
# --- -l stands  for math lib, -i interactive
echo "scale=2;sqrt($num)" | bc -l
echo "scale=2;3^3" | bc -l
echo "$n1*$n2" | bc
echo "scale=2;$n1/$n2" | bc

# case statements 
: '
case exprsn in 
    pattern1 )
        statements ;;
    pattern2 )
        statements ;;
esac
'
# gadi=$1 here $1 takes 1st argument 
sam=van
gadi=$sam

case $gadi in 
    "car" ) echo "gadi is car" ;;
    "van" ) echo "gadi is van" ;;
     * )    echo "gadi unknown" 
esac


echo
LANG=C #to work for capitals
val="&"
case $val in 
    [a-z] ) echo "value between a to z" ;;
    [A-Z] ) echo "value between A to Z" ;;
    [0-9] ) echo "value between 0 to 9" ;;
    ? )     echo "value is any special char" ;;
    * )     echo "value is multi char" 
esac

# [a-z] , [A-Z] are regular exression patterns

