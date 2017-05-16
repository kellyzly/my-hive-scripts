set hive.execution.engine=tez; 
set hive.auto.convert.join.noconditionaltask.size=20; 
set hive.tez.dynamic.partition.pruning=true;

select count(*) from srcpart join srcpart_date_hour on (srcpart.ds = srcpart_date_hour.ds and srcpart.hr = srcpart_date_hour.hr) where srcpart_date_hour.`date` = '2008-04-08' and srcpart_date_hour.hour = 11;
