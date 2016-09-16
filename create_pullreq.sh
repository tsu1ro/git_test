#!/bin/sh

if [ $# -ne 1 ]; then
  echo "指定された引数は$#個です。"
  echo "引数にチケット番号を渡してください。"
  exit 1
fi

if expr "$1" : '[0-9]*' > /dev/null ; then
  echo "チケット番号 $1 の Pull Request を作成します。"
else
  echo "チケット番号が不正です。数値を入力してください。"
  exit 1
fi


echo 'Create temporary format file.'
sed -e "s/ticket-no/$1/g" ~/.pullreqmessage.txt > ~/.pullreqmessage_temp.txt

echo 'Exec Pull Request'
hub pull-request --browse -F ~/.pullreqmessage_temp.txt -b user-name:master -h user-name:$(git symbolic-ref --short HEAD)

echo 'Delete temporary format file.'
rm ~/.pullreqmessage_temp.txt