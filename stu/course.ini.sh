hadoop fs -rmr /tmp/course/*
hadoop fs -mkdir -p /tmp/course/
hadoop fs -rmr /user/hive/warehouse/course/*
hadoop fs -copyFromLocal ./course.txt /tmp/course/ 
hive -f course.ini.sql
