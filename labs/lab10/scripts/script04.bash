#! /usr/bin/bash

# создаю пустой архив
tar -c -f archive.tar -T /dev/null
# меняю рабочий каталог
cd $1
# все файлы, которые были изменены за последние 7 дней
# добавляются в созданный ранее архив
find * -mtime -7 -exec tar -u -f $OLDPWD/archive.tar {} \; 