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

#sorting array into descending order..
length=${#expression[@]}
for(( outer_count=0; outer_count<$length; ++outer_count ))
do
	for (( inner_count=$outer_count+1; inner_count<$length; ++inner_count ))
	do
		if [ ${expression[outer_count]} -lt ${expression[inner_count]} ]
		then
			temp=${expression[outercount]}
			expression[$outer_count]=${expression[inner_count]}
			expression[$inner_count]=$temp
			fi
	done
done

echo "Descending order of sorted array are : " ${expression[@]}
