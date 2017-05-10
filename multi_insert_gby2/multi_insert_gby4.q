set hive.exec.reducers.bytes.per.reducer=256; 
set hive.optimize.sampling.orderby=true;
--set spark.master=local;
drop table if exists e1;
drop table if exists e2;
create table e1 (key string, value string);
create table e2 (key string);
FROM (select key, cast(key as double) as keyD, value from src order by key) a
INSERT OVERWRITE TABLE e1
    SELECT key, value
INSERT OVERWRITE TABLE e2
    SELECT key;

select * from e1;
select * from e2;

