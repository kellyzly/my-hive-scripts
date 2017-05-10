use default;
drop table if exists course;
create table if not exists course(name string,stuname string) 
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
stored as textfile;
load data inpath '/tmp/course' into table course;  

