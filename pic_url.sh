#!/bin/bash
echo "please input md_file and we will output the convert img_url md_file"
echo "$1.md --> $1_url.md"
github_url='https://raw.githubusercontent.com/DayDreammy/ipmv2022/main'
jsdelivr_url='https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main'
sed -e "s#image/#${jsdelivr_url}/image/#g" $1.md> $1_url.md