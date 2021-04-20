#!/bin/bash

# Select which theme to copy will be automatically transferred to the clipboard,
# Only valid in linux, and you should install xclip by hand
# Value: clear, night
clip=clear
# clip=night

theme=(clear night)

cd `dirname "$0"`
source_file="Allure-clear-source.css"

for (( i = 0; i <= ${#theme[@]}; i++ )); do
    if [[ ${theme[i]} == "clear" ]]; then
        content_raw=`sed '/Night mode start/,/Night mode end/d' ${source_file}`
    elif [[ ${theme[i]} == "night" ]]; then
        # content_raw=`sed '/Default mode start/,/Default mode end/d' ${source_file}`
        content_raw=`sed -r '/Default mode start/,/Default mode end/d;s/(theme-allure-)clear/\1night/g' ${source_file}`
    else
        exit 0;
    fi

    content=`echo "${content_raw}" \
    | sed "s/\/\*.*\*\///g;/\/\*/,/\*\// d" \
    | tr '\n' ' ' \
    | tr -s ' ' ' ' \
    | sed 's/^[ ][ ]*//g' \
    | sed '/^$\|^\s*$/d'`

    min_file="Allure-"${theme[i]}".css"
    echo ${content} | dd status=none of=${min_file}

    if [[ ${theme[i]} == ${clip} ]]; then
        xclip -sel clip ${min_file}
    fi
done