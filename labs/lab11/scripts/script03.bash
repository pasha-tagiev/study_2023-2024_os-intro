#! /usr/bin/bash

lowercase=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
uppercase=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

# все буквы английского алфавита
letters=("${lowercase[@]}" "${uppercase[@]}")

result=

# по умолчанию длина последовательности 10
for ((i=${1:-10}; i--;)); do
    result+=${letters[$RANDOM%${#letters[@]}]}
done

echo $result
