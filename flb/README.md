# mysql slow query日誌格式

```log
# Time: 210615 23:56:55
# User@Host: root[root] @ localhost []
# Thread_id: 11694  Schema:   QC_hit: No
# Query_time: 6.000225  Lock_time: 0.000000  Rows_sent: 1  Rows_examined: 0
# Rows_affected: 0  Bytes_sent: 63
SET timestamp=1652003815;
SELECT SLEEP(6);
# Time: 210615 23:56:55
# User@Host: root[root] @ localhost []
# Thread_id: 11694  Schema:   QC_hit: No
# Query_time: 6.000225  Lock_time: 0.000000  Rows_sent: 1  Rows_examined: 0
# Rows_affected: 0  Bytes_sent: 63
SET timestamp=1652007483;
SELECT SLEEP(6);
```