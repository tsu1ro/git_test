# git_test
This is the test.


!hub browse -- compare/$(git symbolic-ref --short HEAD)'?'expand=1'&'body=$(cat ~/.pullreqbody.txt | perl -pe 'encode_utf8' | perl -pe 's/([^ 0-9a-zA-Z])/\"%\".uc(unpack(\"H2\",$1))/eg' | perl -pe 's/ /+/g') 


//issue番号のみ取り出す
git symbolic-ref --short HEAD | sed -e 's/[^0-9]//g'



template.sh
--------------------------------------------
[#ticket-no][WIP][Task/Bug]

## 対象チケット
https://github.com/user-name/hogehoge/ticket-no

## 対応内容

### PR ステータス
 - [ ] 実装完了
 - [ ] レビュー
 - [ ] レビュー指摘対応
 - [ ] 完了
--------------------------------------------
