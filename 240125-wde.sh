#!/bin/env bash

# Запрос исходной и целевой директории у пользова
read -p "Введите исходную директорию: " source_directory
read -p "Введите целевую директорию: " target_directory
read -p "Введите расширение файла: " file_extension

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

# Копирование файлов с указанным расширением в целевую директорию
for file in $matching_files; do
cp "$file" "$target_directory"
echo "Скопирован файл: $file"
done
echo "Готово."

