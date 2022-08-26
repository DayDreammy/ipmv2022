#!/bin/bash
echo "please input md_file and we will output the convert img_url md_file"
echo "$1.md --> $1_url.md"
github_url='https://raw.githubusercontent.com/DayDreammy/ipmv2022/main'
jsdelivr_url='https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main'
project_path=$(cd `dirname $0`; pwd)
sed -e "s#$1.assets/#${jsdelivr_url}/Lecture4_Camera_Calibration/$1.assets/#g" $1.md> $1_url.md