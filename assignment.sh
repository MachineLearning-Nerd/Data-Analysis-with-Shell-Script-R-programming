#!/bin/bash
# 1. File size
echo "=============== Problem A.1 ==============="
input="FB_Dataset.csv"
myfilesize=$(wc -c "FB_Dataset.csv" | awk '{print $1}')
printf "%d\n" $myfilesize

# 2. Find out the delimiter and the column name
echo "=============== Problem A.2 ==============="
tmp=$(head -1 FB_Dataset.csv)
echo "$tmp" | grep -q '[[:space:]]' && echo 'has white space: tab or spaces' 
echo "$tmp" | grep -q ',' && echo 'File has commas'
echo "$tmp" | grep -q '|' && echo 'has pipe symbols'

echo "This is the number of columns:"
val="$(head -1 FB_Dataset.csv | sed 's/[^,]//g' | wc -c)"
echo "$val"

echo "=============== Problem A.3 ==============="
echo "This are the column names:"
val="$(grep -m 1 '' FB_Dataset.csv)"
echo "$val"

echo "=============== Problem A.4 ==============="
#val="$(cat FB_Dataset.csv  | cut -f1 -d , | grep -v "^ " | sed "1 d" | uniq | wc -l)"
#echo "$val"
val="$(cat FB_Dataset.csv  | cut -f1 -d , | sed '/^$/d' | sed "1 d" | uniq | wc -l)"
echo "The unique value in page_name: $val"

echo "=============== Problem A.5 ==============="
#val="$(cat FB_Dataset.csv  | cut -f21 -d , | head -1)"
#echo "$val"

startval=$(head -n2 FB_Dataset.csv | tail -n1 | cut -d',' -f21)
endval=$(tail -n1 FB_Dataset.csv | cut -d',' -f21)
echo " $startval , $endval "
Startdate=$(date -u -d "$startval" +"%d/%m/%y %H:%M")
Enddate=$(date -u -d "$endval" +"%d/%m/%y %H:%M")

CURRENT=$(date -u -d "$Startdate" '+%F %T.%N %Z')
TARGET=$(date -u -d "$Enddate" '+%F %T.%N %Z')
echo "$(( ($(date -d "$TARGET" +%s) - $(date -d "$CURRENT" +%s)) / 86400)) days"

echo "=============== Problem A.6 ==============="
val="$(grep -n -m1  'Italian Dishes' FB_Dataset.csv | head -1 | cut -f4 -d , )"
echo $val

echo "=============== Problem A.7 ==============="
vald="$(grep -c 'Donald Trump' FB_Dataset.csv )"
echo $vald

echo "=============== Problem A.8 ==============="
valo="$(grep -c 'Barack Obama' FB_Dataset.csv)"
echo $valo
var1=$vald
var2=$valo
if [ $var2 -gt $var1 ]
then echo "Obama is more popular"
else echo "Donald is more popular"
fi

echo "=============== Problem A.9 ==============="
val="$(grep -h -i 'Trump' FB_Dataset.csv | sed "1 d" | cut -d, -f2,10 | awk -F , '$2>100' | sort -t"," -k2 -n > trumph.txt)"
echo "trumph.txt is created"


echo "=============== Problem A.10 ==============="
vald="$(grep -h -i 'Donald Trump' FB_Dataset.csv| head -100 |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $2; vsum+=$1} END {print sum,",",vsum}')"
d_angry="$(grep -h -i 'Donald Trump' FB_Dataset.csv |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $2} END {print sum}')"
d_love="$(grep -h -i 'Donald Trump' FB_Dataset.csv |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $1} END {print sum}')"
o_angry="$(grep -h -i 'Barack Obama' FB_Dataset.csv |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $2} END {print sum}')"
o_love="$(grep -h -i 'Barack Obama' FB_Dataset.csv |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $1} END {print sum}')"

d_total=$((d_angry + d_love))
d_love_per=$((d_love*100 / d_total))

o_total=$((o_angry + o_love))
o_love_per=$((o_love*100 / o_total))
if [ $o_love_per -gt $d_love_per ]
then echo "People love Obama more"
else echo "People love Donald more"
fi

# Task B
grep -h -i 'Donald Trump' FB_Dataset.csv |  cut -d, -f21 > trump.csv
sed -i '1 i \Timestamp' trump.csv
echo $vald