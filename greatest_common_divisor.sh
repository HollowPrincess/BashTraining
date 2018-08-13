#!/bin/bash
#this programm is waiting for two numbers in stdin
func_gcd()
{
if [[ -n $1 && -n $2 ]]
then
 let "num1 = $1"
 let "num2 = $2"
else
 read num1 num2
fi

if [[ -n $num1 ]]
then
 if [[ -n $num2 ]]
 then

  if [[ $num1 -eq $num2 ]]
  then
   echo "GCD is $num1"
   func_gcd 
  elif [[ $num1 -gt $num2 ]]
  then
   let "num1 = $num1 - $num2"
   func_gcd $num1 $num2
  else
   let "num2 = $num2 - $num1"
   func_gcd $num1 $num2
  fi
 else
  echo "bye"
  exit
 fi
else
 echo "bye"
 exit
fi
}
func_gcd

