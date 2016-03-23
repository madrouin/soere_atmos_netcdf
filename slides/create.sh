#!/usr/bin/bash

while true; do
    change=$(inotifywait -e close_write,moved_to,create .)
    fullname=${change#./ * }

    f_name=$(basename $fullname)
    ext=${f_name##*.}
    f_name=${f_name%.*}

    if [[ $ext == "md" ]]; then
        pandoc -t revealjs -s --template=template-revealjs.html -V theme="solarized" $fullname -o $f_name".html"
    fi
done