# git_test
This is the test.


!hub browse -- compare/$(git symbolic-ref --short HEAD)'?'expand=1'&'body=$(cat ~/.pullreqbody.txt | perl -pe 'encode_utf8' | perl -pe 's/([^ 0-9a-zA-Z])/\"%\".uc(unpack(\"H2\",$1))/eg' | perl -pe 's/ /+/g') 


//issue番号のみ取り出す
git symbolic-ref --short HEAD | sed -e 's/[^0-9]//g'

//プルリクをつくるシェルをたたくコマンド
sh create_pullreq.sh $(git symbolic-ref --short HEAD | sed -e 's/[^0-9]//g')

//プライベートモードで開く
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --incognito


//cureentブランチのissueタイトルをコピーする
ghi list |grep $(git symbolic-ref --short HEAD | sed -e 's/[^0-9]//g')|pbcopy



