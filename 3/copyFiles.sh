#!/bin/bash

#ЭТО КОД РАМИ
# Запрос исходной и целевой директории у пользователя
read -p "Введите исходную директорию: " source_dir
read -p "Введите целевую директорию: " target_dir

#ТУТ БУДЕТ КОД ДИАНЫ
#Prompt the user to input the file extension. #2
#Предложите пользователю ввести расширение файла. #2
# Запрос расширения файлов, которые нужно скопировать
read -p "Введите расширение файлов для копирования (например, txt): " exte>a20f119 (Исправила ошибку)


#ТУТ БУДЕТ КОД ГАЛИНЫ

#Это КОД СЕРГЕЯ
# Запрос расширения файлов, которые нужно скопировать
read -p "Введите расширение файлов для копирования (например, txt): " extension
#Serhii
#Check for files with the specified extension in the source directory #4
#Проверьте наличие файлов с указанным расширением в исходном каталоге #4
# $source_dir - исходная папка, $extension - расширение
files=$(find "$source_dir" -type f -name "*.$extension")

if [ -z "$files" ]; then
    echo "Ошибка: Нет файлов с расширением .$extension в исходной директории!"
    exit 1
fi


# Copy files with the specified extension to the target directory #5
# Копирование файлов с указанным расширением в целевой каталог #5
# $files - полученные
for file in $files; do
    cp "$file" "$target_dir"
    echo "Файл $file скопирован в $target_dir"
done

echo "Копирование завершено!"


