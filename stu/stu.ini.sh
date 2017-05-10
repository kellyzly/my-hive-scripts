hadoop fs -rmr /tmp/stu/*
hadoop fs -mkdir -p /tmp/stu/
hadoop fs -rmr /user/hive/warehouse/stu/*
hadoop fs -copyFromLocal ./stu.txt /tmp/stu/ 
hive -f stu.ini.sql
