#!/bin/bash

#Запрос на получение расширения файла
read -p "Введите расширение файлов для копирования (без точки): " file_extension

#Проверка существования исходной и целевой директории

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

# Prompt the user for the source and target directories
read -p "Enter the source directory: " source_directory
read -p "Enter the target directory: " target_directory

# Prompt the user for the file extension to copy
read -p "Enter the file extension to copy (without the dot): " file_extension

# Check if the source directory exists
if [ ! -d "$source_directory" ]; then
  echo "The directory '$source_directory' does not exist or is not accessible."
  exit 1
fi

# Check if the target directory exists
if [ ! -d "$target_directory" ]; then
  echo "The directory '$target_directory' does not exist or is not accessible."
  exit 1
fi
# Check if there are files with the given extension in the source directory
matching_files=$(find "$source_directory" -maxdepth 1 -type f -name "*.$file_extension")
if [ -z "$matching_files" ]; then
  echo "No files with the extension '.$file_extension' found in '$source_directory'."
  exit 1
fi

# Copy the files with the given extension to the target directory
for file in $matching_files; do
  cp "$file" "$target_directory"
  echo "Copied file: $file"
done

echo "Done."
