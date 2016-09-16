# git_test
This is the test.


!hub browse -- compare/$(git symbolic-ref --short HEAD)'?'expand=1'&'body=$(cat ~/.pullreqbody.txt | perl -pe 'encode_utf8' | perl -pe 's/([^ 0-9a-zA-Z])/\"%\".uc(unpack(\"H2\",$1))/eg' | perl -pe 's/ /+/g')