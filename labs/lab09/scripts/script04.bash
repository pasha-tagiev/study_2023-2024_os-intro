#! /usr/bin/bash

# проверяет что расширение соответсвует шаблону - '.расширение'
pattern=$1
if ! [[ $pattern =~ ^\..*$ ]]; then
  echo неверно задано расширение файла
  exit 1
fi

# если директория не указана работаем с текущей
dir=${2:-.}

total=$(find $dir -name "*$pattern" -type f | wc -l)
echo "в директории '$dir' имеется $total $pattern файлов"