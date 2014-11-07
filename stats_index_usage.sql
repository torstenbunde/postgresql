SELECT  idstat.schemaname AS schema_name,
        idstat.relname AS table_name,
	      indexrelname AS index_name,
	      idstat.idx_scan AS times_used,
	      pg_size_pretty(pg_relation_size(idstat.relid)) AS table_size,
	      pg_size_pretty(pg_relation_size(indexrelid)) AS index_size,
	      n_tup_upd + n_tup_ins + n_tup_del AS num_writes,
	      indexdef AS definition
  INTO stats.db_idx_usage_2014_11_01
  FROM pg_stat_user_indexes AS idstat
    JOIN pg_indexes ON (indexrelname = indexname AND idstat.schemaname = pg_indexes.schemaname)
    JOIN pg_stat_user_tables AS tabstat ON idstat.relid = tabstat.relid
  ORDER BY idstat.schemaname, idstat.relname, indexrelname;
