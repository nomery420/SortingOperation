#! /bin/bash

read -p "Enter a Number1 : " a
read -p "Enter a Number2 : " b
read -p "Enter a Number3 : " c

expression1=$(( a+b*c ))

expression2=$(( a*b+c ))

