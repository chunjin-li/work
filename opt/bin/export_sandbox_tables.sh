kfsandbox="mysql -h rds9xpp1484ti2j7r39f.mysql.rds.aliyuncs.com -ukefuadmin -pTjbZyjed7D --default-character-set=utf8 weichat2 -A"

curdb=$kfsandbox
echo "show tables" | eval $curdb | grep -v chatmessage_ | awk -v db="$curdb" '{print "echo \"show create table",$1"\" | ",db}' | sh  | grep -v 'Create Table'  | grep -v 'Create View' | sort | awk '{for(i=2;i<=NF;i++){printf "%s ",$i};print "\n"}' | sed -e 's/\\n/\'$'\n/g' > kfsandbox.tables

