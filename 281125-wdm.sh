bin/bash
read -p "Введите исходную директорию: " source_directory
read -p "Введите целевую директорию: " target_directory


read -p "Введите расширение файлов для копирования (без точки): " file_extension
<<<<<<< HEAD
if [ -d "$source_directory" ]; then 
echo "Директория '$source_directory' не существует или недоступна."
exit 1
fi

if [ -d "$target_directory" ]; then
=======

if [ ! -d "$source_directory" ]; then
echo "Директория '$source_directory' не существует или недоступна."
exit 1
fi
if [ ! -d "$target_directory" ]; then
>>>>>>> 252251af6b5304711f374616f8ba32cb7224b266
echo "Директория '$target_directory' не существует или недоступна."
exit 1
fi


matching_files=$(find "$source_directory" -maxdepth 1 -type f -name "*.$file_extension")
if [ -z "$matching_files" ]; then
echo "В директории '$source_directory' нет файлов с расширением '.$file_extension'."
exit 1
fi

