#!/bin/bash
#Запрос исходной и целевой папки:
read -p "Введите исходную папку: " source_directory
read -p "Введите целевую папку: " target_directory

# Запрос на получение расширения файлов
read -p "Введите расширение файлов для копирования (Без точки): " file_extension 

#Проверка существования исходной  и целевой директории
	if [ ! -d "$source_directory" ]; then
	echo "Директория '$source_directory' не существует или недоступна."
	exit 1
	fi
# Проверка существования целевой директории
	if [ ! -d "$target_directory" ]; then
	echo "Директория '$target_directory' не существует или недоступна."
	exit 1
	fi

# Проверка, есть ли файлы с указанным расширением в исходной директории
	matching_files=$(find "$source_directory" -maxdepth 1 -type f -name
	"*.$file_extension")
	if [ -z "$matching_files" ]; thenecho "В директории '$source_directory' нет файлов с расширением
	'.$file_extension'."
	exit 1
	fi
