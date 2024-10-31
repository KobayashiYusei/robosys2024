#!/bin/bash
ng (){
	echo ${1}行目が違う。もう人生を諦めろ。
	res=1
}
res=0
a=小林
[ "$a" = 小林 ] || ng "$LINENO"
[ "a?" = 松本 ] || ng "$LINENO"

exit $res
