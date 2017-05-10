set hive.mapred.mode=nonstrict;
set hive.spark.use.op.stats=false;
set hive.auto.convert.join=false;
set hive.exec.reducers.bytes.per.reducer=500;


SELECT src1.key, src2.value
FROM src src1 JOIN src src2 ON (src1.key = src2.key)
WHERE src1.key = 97;

