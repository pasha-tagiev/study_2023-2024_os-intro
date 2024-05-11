#! /usr/bin/bash


i=-i

while getopts i:o:p:Cn optletter 
do case $optletter in
i) ifile=$OPTARG;;
o) ofile=$OPTARG;;
p) pattern=$OPTARG;;
# опция -i (insensitive) отключается
# если был передан флаг -C
C) i=;; 
n) n=-n;;
*) echo неизвестная опция $optletter
esac
done

# поиск с заданными опциями и вывод результатов в файл
grep $i $n $pattern $ifile > $ofile