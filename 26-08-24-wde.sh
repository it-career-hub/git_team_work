#!/bin/bash

read -p "Введите исходную директорию: " source_directory
read -p "Введите целевую директорию: " target_directory

# Проверка существования исходной директории
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
matching_files=$(find "$source_directory" -maxdepth 1 -type f -name "*.$file_extension")

if [ -z "$matching_files" ]; then
    echo "В директории '$source_directory' нет файлов с расширением '.$file_extension'."
    exit 1
fi
