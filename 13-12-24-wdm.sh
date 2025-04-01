#!/bin/bash
#Запрос исходной и целевой папки:
read -p "Введите исходную папку: " source_directory
read -p "Введите целевую папку: " target_directory

#Запрос на получение расширения файла
read -p "Введите расширение файлов для копирования (без точки): " file_extension

#Проверка существования исходной и целевой директории
	if [ ! -d "$source_directory" ]; then
	echo "Директория '$source_directory' не существует или недоступна."
	exit 1
	fi
# Проверка существования целевой директории
	if [ ! -d "$target_directory" ]; then
	echo "Директория '$target_directory' не существует или недоступна."
	exit 1
	fi
