#!/bin/bash

mkdir -p ./cache

#cat ./cache/list.html | grep "data-list" | sed 's/<div class="data-info"><span class="week">//g;s/<\/span><span class="data">//g;s/<\/span><span class="num">/----/' > ./cache/cach1

#cat ./cache/cach1 | sed 's/<\/span><\/div><\/div><div class="data-item data-no">/\r\n/g;s/<\/span><span class="num">/----/g;s/.*data-no">//g;s/<\/span>.*//g' >./cache/cach3

#cat ./cache/cach1 | sed 's/<\/span><\/div><\/div><div class="data-item data-no">/<\/p><p>/g;s/<\/span><span class="num">/----/;s/.*data-no">/<p>/g;s/<\/span><span class="num">/----/g;s/<\/span>.*/<\/p>/' > ./cache/cach2

bash ./string.sh

echo '<html><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> <head><title>余票查询</title></head><body>' >  /var/www/html/check/index.html

time=`date "+%Y-%m-%d %H:%M:%S" `

echo "<p>更新时间：${time}</p>" >>  /var/www/html/check/index.html 

cat ./cache/cach2 >> /var/www/html/check/index.html

echo "</body></html>" >> /var/www/html/check/index.html

