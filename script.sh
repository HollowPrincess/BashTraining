#! /bin/bash
echo "enter your name:"
read name
age=0
if [[ -n $name ]]
 then
 echo "enter your age:"
 read age
fi

while [[ -n $name && $age -ne 0 ]]
do

 if [[ $age -le 16 ]]
 then
  echo "$name, your group is child"
 elif [[ $age -le 25 ]]
 then 
  echo "$name, your group is youth"
 else
  echo "$name, your group is adult"
 fi

 echo "enter your name:"
 read name
 if [[ -n $name ]]
  then
  echo "enter your age:"
  read age
 fi
done
echo "bye"
