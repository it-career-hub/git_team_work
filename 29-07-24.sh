#!/bin/bash

set -e

# Запрос исходной и целевой директории у пользователя
read -p "Введите исходную директорию: " source_directory
read -p "Введите целевую директорию: " target_directory

# запрос расширения файлов
read -p "input the file extension: " file_extension


# Проверка существования исходной директории
if [ ! -d "$source_directory" ]; then
echo "Директория '$source_directory' не существует или недоступна."
exit 1
fi
