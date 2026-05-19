#!/bin/bash

txt_file=$1

if [[ ! -f "$txt_file" ]]; then
    echo "Файл не найден: $txt_file"
    exit 1
fi

awk '{for(i=1;i<=NF;i++){w=$i; sub(/\.$/,"",w); if(!seen[w]++) printf "%s ", $i}; print ""}' "$txt_file" > "$txt_file.txt"

mv "$txt_file.txt" "$txt_file"
echo " Повторы удалены из '$txt_file'."
