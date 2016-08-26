while read line
do
eds=`echo $line|rev|cut -c-3|rev`
if  [ "bz2" = ''$eds ]; then 

cat $line | bunzip2 | awk '{if($2=="a1.easemob.com"){a[$4]++;to++;if(a[$4]>mx){mx=a[$4];ti=$4;}}}END{sz=length(a);if(sz>0){avg=to/sz};for(key in a){if(a[key]>=avg){print key,a[key]}} print "totalline: ",NR," totalsec: ",sz," totalaccess: ",to," avgconcur: ",avg," maxconcur: ",mx," mx_occ_time: ",ti}' | sort -k2n | tail -21

else 

cat $line | awk '{if($2=="a1.easemob.com"){a[$4]++;to++;if(a[$4]>mx){mx=a[$4];ti=$4;}}}END{sz=length(a);if(sz>0){avg=to/sz};for(key in a){if(a[key]>=avg){print key,a[key]}} print "totalline: ",NR," totalsec: ",sz," totalaccess: ",to," avgconcur: ",avg," maxconcur: ",mx," mx_occ_time: ",ti}' | sort -k2n | tail -21

fi
done
