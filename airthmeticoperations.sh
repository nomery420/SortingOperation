#! /bin/bash

read -p "Enter a Number1 : " a
read -p "Enter a Number2 : " b
read -p "Enter a Number3 : " c

expression1=$(( a+b*c ))

expression2=$(( a*b+c ))

expression3=$(( c+a/b ))

expression4=$(( a%b+c ))


declare -A expression
expression=(["exp1"]=$expression1 ["exp2"]=$expression2 ["exp3"]=$expression3 ["exp4"]=$expression4)


echo "Computation values are : " ${expression[@]}
