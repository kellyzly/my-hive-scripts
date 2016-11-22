stop_ms
cp packaging/target/apache-hive-2.2.0-SNAPSHOT-bin.tar.gz  /tmp/
cd /tmp/
tar xvf apache-hive-2.2.0-SNAPSHOT-bin.tar.gz 
newHive=/tmp/apache-hive-2.2.0-SNAPSHOT-bin
cp $HIVE_HOME/conf/hive-site.xml $newHive/conf/
cp $HIVE_HOME/conf/hive-log4j2.properties $newHive/conf/
cp stop_ms.sh $newHive/
chmod u+x $newHive/stop_ms.sh
cp $HIVE_HOME/web_clickstreams_10.sql $newHive/
cp $HIVE_HOME/lib/mysql*jar $newHive/lib/
cp $SPARK_HOME/jars/*.jar $newHive/lib/
rm -rf $HIVE_HOME
cp -rf $newHive /home/ 
hive --service metastore &
