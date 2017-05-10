set hive.exec.reducers.bytes.per.reducer=256; 
set hive.optimize.sampling.orderby=true;
drop table if exists e1;
drop table if exists e2;
create table if not exists e1 (count int);
create table if not exists e2 (percentile double);
FROM (select key, cast(key as double) as value from src order by key) a
INSERT OVERWRITE TABLE e1
    SELECT COUNT(*)
INSERT OVERWRITE TABLE e2
    SELECT percentile_approx(value, 0.5);

select * from e1;
select * from e2;
