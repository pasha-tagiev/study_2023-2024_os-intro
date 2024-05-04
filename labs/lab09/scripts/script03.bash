#! /usr/bin/bash

# если директория не указана работаем с текущей
cd ${1:-.}

# выводим и скрытые файлы
for file in .* *
do
    # выводит информацию о правах доступа
    # и типе файла в том же формате что и ls
    perm=(- - - -)
    [ -d $file ] && perm[0]=d
    [ -r $file ] && perm[1]=r
    [ -w $file ] && perm[2]=w
    [ -e $file ] && perm[3]=x
    perm=$(IFS= ; echo "${perm[*]}")
    echo $perm $file
done
