hivelog="$HIVE_HOME/logs/hive.log"
grep -n -A5 " ql.Driver: Executing command" $hivelog >$HIVE_HOME/logs/exec.command 2>&1
grep -n  -A5 "ql.Driver: EXPLAIN output" $hivelog >$HIVE_HOME/logs/explain 2>&1
grep -n -C2 " ql.Driver: Total jobs" $hivelog>$HIVE_HOME/logs/jobs 2>&1
