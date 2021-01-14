#!/bin/bash -x
echo "Hello to all"
read -p "enter your first value a ::" a
read -p "enter your second value b ::" b
read -p "enter your third value c ::" c

result=$(( $a + $b * $c ))
result2=$(( $a * $b + $c ))



