use default;
set spark.master=local;
select * from stu join course on stu.name = course.stuname;

