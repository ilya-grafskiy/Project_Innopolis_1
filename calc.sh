#!/bin/bash

echo "у вас в директории есть следующие файлы:"
echo `ls *.txt`
echo "выберите два из них чтобы сравнить результат вычисления"

read -p "введите название первого (полностью с расширением):" file1
read -p "введите название второго (полностью с расширением):" file2

file1=$((`cat $file1`))
file2=$((`cat $file2`))


if [ $file1 -gt $file2 ]; then
 echo "выражение  в первом файле больше и равно $file1"
else echo "выражение во втором файле больше и равно $file2"
fi
