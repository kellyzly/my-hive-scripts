ps -ef|grep java|grep metastore |awk '{print $2}'|xargs kill -9 
