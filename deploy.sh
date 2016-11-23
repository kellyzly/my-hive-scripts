./stop_ms.sh
netstat -anp|grep 9083|grep java|awk '{print $7}'|cut -d'/' -f1|xargs kill -9 
cp packaging/target/apache-hive-2.2.0-SNAPSHOT-bin.tar.gz  /tmp/
hive_source_dir=`pwd`
cd /tmp/
newHive=/tmp/apache-hive-2.2.0-SNAPSHOT-bin
rm -rf $newHive
tar xvf apache-hive-2.2.0-SNAPSHOT-bin.tar.gz 
cp $HIVE_HOME/conf/hive-site.xml $newHive/conf/
cp $HIVE_HOME/conf/hive-log4j2.properties $newHive/conf/
cp $hive_source_dir/stop_ms.sh $newHive/
chmod u+x $newHive/stop_ms.sh
cp $HIVE_HOME/web_clickstreams_10.sql $newHive/
cp $HIVE_HOME/lib/mysql*jar $newHive/lib/
# copy necessary spark libraries
cp $SPARK_HOME/jars/scala-library-2.11.8.jar $newHive/lib/
cp $SPARK_HOME/jars/spark-core_2.11-2.0.0.jar   $newHive/lib/
cp $SPARK_HOME/jars/spark-network-common_2.11-2.0.0.jar $newHive/lib/


rm -rf $HIVE_HOME
cp -rf $newHive /home/ 
hive --service metastore &
