while read line
do
eds=`echo $line|rev|cut -c-3|rev`
if  [ "bz2" = ''$eds ]; then 

cat $line | bunzip2 | awk '{if(NF>8){i=index($6,"?");if(i>0){url=substr($6,1,i-1)} else {url=$6} a[url]++}}END{for(key in a){print key,a[key]}}'| sort -k2n

else 

cat $line | awk '{if(NF>8){i=index($6,"?");if(i>0){url=substr($6,1,i-1)} else {url=$6} a[url]++}}END{for(key in a){print key,a[key]}}'| sort -k2n

fi
done
