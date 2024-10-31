#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Yusei Kobayashi
# SPDX-License-Identifier: BSD-3-Clause
ng (){
	echo うん、なるほどね。${1}行目が違う。未ロボの皆さんは優秀だって聞いたんですけど。
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "$out" = 15.0 ] || ng "$LINENO"

out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res

