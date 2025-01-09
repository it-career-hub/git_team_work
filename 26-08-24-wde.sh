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
