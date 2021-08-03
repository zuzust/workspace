#!/usr/bin/env bash

fonts_dir="${TTFONTS_DIR}/fira-code"

if [ ! -d "${fonts_dir}" ]; then
    echo "mkdir -p $fonts_dir"
    mkdir -p "${fonts_dir}"
else
    echo "Found fonts dir $fonts_dir"
fi

for type in Bold Light Medium Regular Retina SemiBold; do
    file_path="${fonts_dir}/FiraCode-${type}.ttf"
    file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
    if [ ! -e "${file_path}" ]; then
        echo "wget -O $file_path $file_url"
        wget -O "${file_path}" "${file_url}"
    else
	    echo "Found existing file $file_path"
    fi;
done


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/fonts/fira-code/install.sh
