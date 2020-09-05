#!/bin/bash

cat ./cache/list.html| grep "data-list"|sed 's/<span class="data">//g;s/<div class="data-info">//g;s/<span class="num">//g;s/<div class="data-item data-no">//g;s/<\/div>//g;s/周日<\/span>/周日/g;s/日<\/span>/----/g;s/<span class="week">/@@@/g' \
	|sed 's/<div class="data-list">@@@//g' \
	|sed 's/<div class="data-list"><div class="data-item data-has active">@@@//;s/ //g;s/<\/span>//g;s/<spanclass="numactive">//g;s/<divclass="data-morebtn">//g;s/@@@/\r\n/g;s/<divclass="data-list">//g;s/ //g' > ./cache/cach3


cat ./cache/list.html| grep "data-list"|sed 's/<span class="data">//g;s/<div class="data-info">//g;s/<span class="num">//g;s/<div class="data-item data-no">//g;s/<\/div>//g;s/周日<\/span>/周日/g;s/日<\/span>/----/g;s/<span class="week">/@@@/g' \
	|sed 's/<div class="data-list">@@@//g' \
	|sed 's/<div class="data-list"><div class="data-item data-has active">@@@//;s/ //g;s/<\/span>//g;s/<spanclass="numactive">//g;s/<divclass="data-morebtn">//g;s/@@@/<\/p>\r\n/g;s/<divclass="data-list">//g;s/ //g;s/$/<\/p>/'\
	| sed 's/^/<p>/g' > ./cache/cach2

