#!/bin/bash

targetdirectory=$(/target_directory)
sourcedirectory=$(/source_directory)

if [ ! -d "$target_directory" ] || [ ! -d "$sourcedirectory" ]
then
echo "directories are not found"
exit 1

if [ ! -r "$target_directory" ] || [ ! -r "$sourcedirectory" ]
then
echo "directories are not are not available"
exit 1 
fi
# Проверка, есть ли файлы с указанным расширением в исходной директории

files=$(find "$source_directory" -maxdepth 1 -type f -name "*$file_extension")

if [ -z "$files" ]; 
	then
		echo "Файлы не найдены"
		exit 1
fi

# Копирование файлов с указанным расширением в целевую директорию




echo "Введите расширение файлов, которые вы хотите скопировать (например, 
txt):"
read file_extension

