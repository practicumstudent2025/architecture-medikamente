#!/bin/bash
# Скрипт для автоматического добавления compressed="false" в drawio файлы

for file in *.drawio Task1/*.drawio; do
    if [ -f "$file" ]; then
        # Проверяем наличие атрибута
        if ! grep -q 'compressed="false"' "$file"; then
            # Добавляем атрибут
            sed -i '' 's/<diagram name="\([^"]*\)" id="\([^"]*\)">/<diagram name="\1" id="\2" compressed="false">/g' "$file"
            echo "Fixed: $file"
        fi
    fi
done
