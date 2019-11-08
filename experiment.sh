# temp=$(date -u -d '7/11/16 0:30' +"%d/%m/%y %H:%M")
# echo "This is temp $temp"

# CURRENT=$(date -u -d '1/1/12 0:30' '+%F %T.%N %Z')
# TARGET=$(date -u -d "$temp" '+%F %T.%N %Z')
# echo $CURRENT
# echo $TARGET
# val=$((($(date -d"$TARGET" +%s) - $(date  -d"$CURRENT" +%s))))
# echo $(( ($(date -d "$TARGET" +%s) - $(date -d "$CURRENT" +%s)) / 86400))



# echo "=============== Problem A.7 ==============="
# val="$(grep 'Donald Trump' FB_Dataset.csv )"
# echo $val
# val="$(grep -c 'Donald Trump' FB_Dataset.csv )"
# echo $val

# echo "=============== Problem A.9 ==============="
# val="$(grep -h -i 'Trump' FB_Dataset.csv | cut -f10 -d , | awk '$1>100' | awk '{sum += $i} END {print sum}')"
# echo $val
# val="$(grep -h -i 'Trump' FB_Dataset.csv  | sort -k 2n | awk '{print $2,$10}' > trumph.txt)"
# echo $val
# val="$(head -10 FB_Dataset.csv | cut -d, -f2,10 )"
# echo $val
# val="$(head -10 FB_Dataset.csv | sed "1 d" | cut -d, -f10,2 | awk '$2>100' | sort -t"," -k2 -n > trumph.txt)"
# echo $val
# val="$(grep -h -i 'Trump' FB_Dataset.csv | sed "1 d" | cut -d, -f2,10 | awk -F , '$2>100' | sort -t"," -k2 -n > trumph.txt)"
# echo $val
# val="$(grep -h -i 'Trump' FB_Dataset.csv | head -10 | sed "1 d"  | cut -d, -f2,10 | awk -F , '$2>100' | sort -t"," -k2 -n)"
# echo $val

# echo "=============== Problem A.10 ==============="
# vald="$(grep -h -i 'Donald Trump' FB_Dataset.csv| head -100 |  cut -d, -f13,18 | awk -F , '$2>0')"
# echo $vald
# vald="$(grep -h -i 'Donald Trump' FB_Dataset.csv| head -100 |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $2; vsum+=$1} END {print sum,",",vsum}')"
# echo $vald

# d_angry="$(grep -h -i 'Donald Trump' FB_Dataset.csv |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $2} END {print sum}')"
# echo $d_angry
# d_love="$(grep -h -i 'Donald Trump' FB_Dataset.csv |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $1} END {print sum}')"
# echo $d_love
# o_angry="$(grep -h -i 'Barack Obama' FB_Dataset.csv |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $2} END {print sum}')"
# echo $o_angry
# o_love="$(grep -h -i 'Barack Obama' FB_Dataset.csv |  cut -d, -f13,18 | awk -F , '$2>0'| awk -F , '{sum += $1} END {print sum}')"
# echo $o_love

# d_total=$((d_angry + d_love))
# echo $d_total
# d_love_per=$((d_love*100 / d_total))
# echo $d_love_per

# o_total=$((o_angry + o_love))
# o_love_per=$((o_love*100 / o_total))
# echo $o_love_per
# if [ $o_love_per -gt $d_love_per ]
# then echo "Obama is more popular"
# else echo "Donald is more popular"
# fi

# var=$(awk -v x=$x y=$y 'BEGIN { print 1 - ((x) / y) }')

# valo="$(grep -c 'Barack Obama' FB_Dataset.csv)"

# totalvalue=0
# for i in ${val[@]}; do
#     let totalvalue+=$i
# done
# echo "Total: $totalvalue"

# sum=$(IFS=+; echo "$((${val[*]}))")
# echo "Sum=$sum"
# val="$(cut -f5 -d , FB_Dataset.csv | grep -n 'Donald Trump'| awk '$1>100')"
# echo $val

# echo "=============== Problem A.8 ==============="
# val="$(grep -c 'Barack Obama' FB_Dataset.csv)"
# echo $val
# echo "=============== problem a.7 ==============="
# vald="$(grep -c 'donald trump' fb_dataset.csv )"
# echo $vald

# echo "=============== problem a.8 ==============="
# valo="$(grep -c 'barack obama' fb_dataset.csv)"
# echo $valo


# if [valo -gt vald]
# then echo "Obama is more popular"
# else echo "Donald is more popular"
# fi

#!/bin/bash
# Script to do numeric comparisons
# var1=$vald
# var2=$valo
# if [ $var2 -gt $var1 ]
# then
#         echo "$var2 is greater than $var1"
# else 
#         echo "$var2 is lesser than $var1"
# fi

