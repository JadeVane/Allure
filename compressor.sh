#!/bin/bash

# Select which theme to copy will be automatically transferred to the clipboard,
# Only valid in linux, and you should install xclip by hand
# Value: clear, night
clip=clear
# clip=night

# Choose whether to use the radical version by default
# Only valid in linux, and you should install xclip by hand
# Value: true, false
# radical=true
radical=false

# ----------------------------------
# do NOT edit below
# ----------------------------------

theme=(clear night)

cd `dirname "$0"`
source_file="source-code.css"

for (( i = 0; i <= ${#theme[@]}; i++ )); do
    min_file="Allure-"${theme[i]}".css"
    min_file_radical="Allure-"${theme[i]}"_radical.css"

    if [[ ${theme[i]} == "clear" ]]; then

        content_raw=`sed -e '/Night mode start/,/Night mode end/d' \
                         -e '/Radical version start/,/Radical version end/d' \
                         ${source_file}`

        content_raw_radical=`sed -e '/Night mode start/,/Night mode end/d' \
                               -e '/Stable version start/,/Stable version end/d' \
                               ${source_file}`

    elif [[ ${theme[i]} == "night" ]]; then

        # content_raw=`sed -r -e '/Default mode start/,/Default mode end/d' \
        #                     -e '/Radical version start/,/Radical version end/d' \
        #                     ${source_file}`
        # content_raw_radical=`sed -r -e '/Default mode start/,/Default mode end/d' \
        #                           -e '/Stable version start/,/Stable version end/d' \
        #                           ${source_file}`

        content_raw=`sed -r -e '/Default mode start/,/Default mode end/d' \
                            -e 's/(theme-allure-)clear/\1night/g' \
                            -e '/Radical version start/,/Radical version end/d' \
                            ${source_file}`
        content_raw_radical=`sed -r -e '/Default mode start/,/Default mode end/d' \
                                  -e 's/(theme-allure-)clear/\1night/g' \
                                  -e '/Stable version start/,/Stable version end/d' \
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

    echo "${content_raw_radical}" \
    | sed "s/\/\*.*\*\///g;/\/\*/,/\*\// d" \
    | tr '\n' ' ' \
    | tr -s ' ' ' ' \
    | sed 's/^[ ][ ]*//g' \
    | sed '/^$\|^\s*$/d' > ${min_file_radical}

    if [[ ${clip} == ${theme[i]} ]]; then
        if [[ ${radical} == "true" ]]; then
            xclip -sel clip ${min_file_radical}
        else
            xclip -sel clip ${min_file}
        fi
    fi

done
