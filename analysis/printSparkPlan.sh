rm -rf $HIVE_HOME/logs/sparkplan.log
echo "Spark Plan"
grep -n -A5 "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Spark Plan !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" $HIVE_HOME/logs/hive.log >>$HIVE_HOME/logs/sparkplan.log 2>&1
echo "Spark RDD of this spark plan"
grep -n -A5 "print generated spark rdd graph" $HIVE_HOME/logs/hive.log >>$HIVE_HOME/logs/sparkplan.log 2>&1
