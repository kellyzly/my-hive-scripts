export HADOOP_OPTS="$HADOOP_OPTS -XX:MaxPermSize=128m";
debug=$1
if [ "$debug" == "true" ];then
hive --debug -f stu.sql
else
hive -f stu.sql
fi
