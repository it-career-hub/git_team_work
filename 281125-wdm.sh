#!/bin/bash
read -p "Введите исходную директорию: " source_directory
read -p "Введите целевую директорию: " target_directory


read -p "Введите расширение файлов для копирования (без точки): " file_extension

if [ ! -d "$source_directory" ]; then
echo "Директория '$source_directory' не существует или недоступна."
exit 1
fi
