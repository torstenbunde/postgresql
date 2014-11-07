SELECT COUNT(*) AS "ungranted"
  FROM pg_stat_activity, pg_locks
  WHERE pg_locks.pid = pg_stat_activity.procpid
    AND granted = false;
