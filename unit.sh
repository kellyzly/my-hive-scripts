debug=$2
if [ $debug == "true" ];then
	mvn test -Dtest=$1 -Dmaven.surefire.debug="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000 -Xnoagent -Djava.compiler=NONE" -Dsurefire.timeout=0 >log.unit 2>&1
else
	mvn test -Dtest=$1 >log.unit 2>&1
fi
