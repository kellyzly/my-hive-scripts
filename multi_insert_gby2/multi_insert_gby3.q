set hive.exec.reducers.bytes.per.reducer=256; 
set hive.optimize.sampling.orderby=true;
set hive.execution.engine=spark;
--set spark.master=local;
drop table if exists e1;
drop table if exists e2;
create table e1 (key string, keyD double);
create table e2 (key string, keyD double, value string);
FROM (select key, cast(key as double) as keyD, value from src order by key) a
INSERT OVERWRITE TABLE e1
    SELECT key, COUNT(distinct value) group by key
INSERT OVERWRITE TABLE e2
    SELECT key, sum(keyD), value group by key, value;

select * from e1;
select * from e2;

