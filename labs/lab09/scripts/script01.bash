#! /usr/bin/bash

backup=~/backup

# создаю директорию для архива
mkdir -p $backup

# realpath нужен чтобы скрипт архивировался
# не зависимо от того из какого каталога его вызывают
# путь возвращаемый realpath абсолютный
script=$(realpath $0)

# удаление лидирующего слеша и
# обрамление строки кавычками,
# чтобы можно было работать с путями
# в которых встречаются пробелы и
# русские буквы
script=\'${script#/}\'

# eval - исполнить строку
eval tar -zc -f $backup/backup.tar.gz -C / $script