#! /usr/bin/bash

file=/usr/share/man/man1/$1.1.gz # путь к мануалам

if [ -f $file ]; then
    # если архив существует
    # читаем его и передаем
    # интерпретатору языка разметки roff
    # затем читаем его постранично
    zcat $file | groff -man -T utf8 -i | less
else
    echo Для $1 не существует справки
fi
