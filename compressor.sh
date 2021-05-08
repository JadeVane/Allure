#!/bin/bash

# Select which theme to copy will be automatically transferred to the clipboard,
# Only valid in linux, and you should install xclip by hand
# Value: clear, night
clip=clear
# clip=night

notab=true
# notab=false

# ----------------------------------
# do NOT edit below
# ----------------------------------

theme=(clear night)

cd `dirname "$0"`
source_file="Allure-clear-source.css"

for (( i = 0; i <= ${#theme[@]}; i++ )); do
    min_file="Allure-"${theme[i]}".css"
    min_file_notab="Allure-"${theme[i]}"-notab.css"

    if [[ ${theme[i]} == "clear" ]]; then

        content_raw=`sed -e '/Night mode start/,/Night mode end/d' \
                         -e '/No tabs version start/,/No tabs version end/d' \
                         ${source_file}`

        content_raw_notab=`sed -e '/Night mode start/,/Night mode end/d' \
                               -e '/With tabs version start/,/With tabs version end/d' \
                               ${source_file}`

    elif [[ ${theme[i]} == "night" ]]; then

        # content_raw=`sed '/Default mode start/,/Default mode end/d' ${source_file}`
        content_raw=`sed -r -e '/Default mode start/,/Default mode end/d' \
                            -e 's/(theme-allure-)clear/\1night/g' \
                            -e '/No tabs version start/,/No tabs version end/d' \
                            ${source_file}`

        content_raw_notab=`sed -r -e '/Default mode start/,/Default mode end/d' \
                                  -e 's/(theme-allure-)clear/\1night/g' \
                                  -e '/With tabs version start/,/With tabs version end/d' \
                                  ${source_file}`
    else
        exit 0;
    fi

    echo "${content_raw}" \
    | sed "s/\/\*.*\*\///g;/\/\*/,/\*\// d" \
    | tr '\n' ' ' \
    | tr -s ' ' ' ' \
    | sed 's/^[ ][ ]*//g' \
    | sed '/^$\|^\s*$/d' > ${min_file}

    echo "${content_raw_notab}" \
    | sed "s/\/\*.*\*\///g;/\/\*/,/\*\// d" \
    | tr '\n' ' ' \
    | tr -s ' ' ' ' \
    | sed 's/^[ ][ ]*//g' \
    | sed '/^$\|^\s*$/d' > ${min_file_notab}

    if [[ ${clip} == ${theme[i]} ]]; then
        if [[ ${notab} == "true" ]]; then
            xclip -sel clip ${min_file_notab}
        else
            xclip -sel clip ${min_file}
        fi
    fi

done