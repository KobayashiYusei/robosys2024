#!/bin/bash
ng (){
	echo うん、なるほどね。${1}行目が違う。未ロボの皆さんは優秀だって聞いたんですけど。
	res=1
}
res=0
a=小林
[ "$a" = 小林 ] || ng "$LINENO"
[ "$a" = 松本 ] || ng "$LINENO"

exit $res
