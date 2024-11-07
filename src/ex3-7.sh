#!/bin/bash

folder_name=$1

if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
  echo "$folder_name 폴더를 생성했습니다."
fi

for i in {0..4}
do
  touch "$folder_name/file$i.txt"
done
echo "5개의 파일을 생성했습니다."

cd "$folder_name"
for i in {0..4}
do
  subfolder="file$i"
  mkdir "$subfolder"
  ln -s "../file$i.txt" "$subfolder/file$i.txt"
done
echo "각 파일 이름대로 하위 폴더를 생성하고 파일을 링크했습니다."

