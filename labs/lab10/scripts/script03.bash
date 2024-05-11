#! /usr/bin/bash

if [ -n "$1" ]; then 
    # файлы создаются если передано число
    eval touch {1..$1}.tmp
    # если ничего не передано удаляются по шаблону
    else find * -maxdepth 1 -type f -regex "^[1-9][0-9]*\.tmp$" -delete
fi