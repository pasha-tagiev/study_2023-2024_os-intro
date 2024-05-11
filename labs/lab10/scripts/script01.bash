#! /usr/bin/bash

# по умолчанию не различает регистр
i=-i

# если не указан файл выводим в текущий терминал
ofile=$(tty)

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

if [ -z "$ifile" ]; then
    echo не указан файл для поиска
    exit 1
fi

if [ -z "$pattern" ]; then
    echo не указан паттерн
    exit 1
fi

# поиск с заданными опциями и вывод результатов в файл
grep $i $n $pattern $ifile > $ofile
