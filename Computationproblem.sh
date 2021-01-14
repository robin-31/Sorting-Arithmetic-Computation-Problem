#!/bin/bash -x
declare -A computation
declare -a arrcomputation
#"Hello to all"
function descendingOrder() {
	arr=("$@")
	length=${#arr[@]}
	for (( i=0; i<$length; i++ ))
	do
		for (( j=$i; j<$length; j++ ))
		do
			if [[ ${arr[$i]} -lt ${arr[$j]} ]]
			then
				temp=${arr[$i]}
				arr[$i]=${arr[$j]}
				arr[$j]=$temp
		fi
	done
done
echo "Sorted array in descending order"
echo ${arr[@]}
}
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
counter=0
for i in "${!computation[@]}"
do
	arrcomputation[$((counter++))]="${computation[$i]}"
done
echo "data stored into array ${arrcomputation[@]}"
descendingOrder ${arrcomputation[@]} 
