#!/bin/bash


read -p "Insert search directory: " dir_search
read -p "Insert target directory: " dir_target
read -p "Введите расштрение файлов для копирования:" file_ext 
#Проверка наличия файлов с указанным расширением в исходной директории
files_found=$(find "$source_dir" -type f -name "*$.file_ext")

if [ -z "$files_found" ]; then
	echo "Файлы с расширением .$file_ext не найдены в исходной директории"
	exit 1
fi
#Копирование
for file in $matching_files; do
    cp "$file" "$target_directory"
    echo "File copynig: $file"
done
    echo "Done."
