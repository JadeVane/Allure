#!/bin/bash

source_file=Allure-source.css
min_file=Allure.css

cd `dirname "$0"`

content=`cat ${source_file} \
| sed "s/\/\*.*\*\///g;/\/\*/,/\*\// d" \
| tr '\n' ' ' \
| tr -s ' ' ' ' \
| sed 's/^[ ][ ]*//g' \
| sed '/^$\|^\s*$/d'`

echo ${content} | dd status=none of=${min_file}
xclip -sel clip ${min_file}

