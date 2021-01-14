#!/bin/bash -x
declare -A computation
echo "Hello to all"
read -p "enter your first value a ::" a
read -p "enter your second value b ::" b
read -p "enter your third value c ::" c

result=$(( $a + $b * $c ))
result2=$(( $a * $b + $c ))
result3=$(( $c + $a / $b ))
result4=$(( $a % $b + $c ))
computation[operation]="$result"
computation[operation2]="$result2"
computation[operation3]="$result3"
computation[operation4]="$result4"
echo ${computation[@]}
