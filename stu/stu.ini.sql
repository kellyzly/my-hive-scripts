use default;
drop table if exists stu;
create table if not exists stu(name string,score TINYINT) 
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
stored as textfile;
load data inpath '/tmp/stu' into table stu;  

