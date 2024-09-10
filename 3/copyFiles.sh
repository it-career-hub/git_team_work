
#Serhii
#Check for files with the specified extension in the source directory #4
#Проверьте наличие файлов с указанным расширением в исходном каталоге #4
# $source_dir - исходная папка, $extension - расширение
files=$(find "$source_dir" -type f -name "*.$extension")

if [ -z "$files" ]; then
    echo "Ошибка: Нет файлов с расширением .$extension в исходной директории!"
    exit 1
fi


# Copy files with the specified extension to the target directory #5
# Копирование файлов с указанным расширением в целевой каталог #5
# $files - полученные
for file in $files; do
    cp "$file" "$target_dir"
    echo "Файл $file скопирован в $target_dir"
done

echo "Копирование завершено!"