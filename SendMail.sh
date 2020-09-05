#!/bin/bash

num=`cat ./cache/cach3 | sed -n '2,2p'| sed 's/.*----//g'`

res=` echo $num | sed 's/[0-9]/qaq/g'`

if [[ $res =~ "qaq" ]];then
	python3 ./SendMail.py ${num}
fi
