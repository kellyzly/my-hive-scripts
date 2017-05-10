set hive.async.log.enabled=false;	
set hive.explain.user=true;
set spark.master=local;
use default;
--select * from stu group by name;
--select name,SUM(score) from stu group by name,score;
select stu.name,stu.score,course.name from stu inner join course on stu.name=course.stuname; 
