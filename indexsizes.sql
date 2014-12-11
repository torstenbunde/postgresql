SELECT	DISTINCT(idstat.schemaname || '.' || indexrelname) AS index_name,
	pg_size_pretty(pg_relation_size(indexrelid)) AS index_size
  FROM pg_stat_user_indexes AS idstat
    JOIN pg_indexes ON (indexrelname = indexname AND idstat.schemaname = pg_indexes.schemaname)
    JOIN pg_stat_user_tables AS tabstat ON idstat.relid = tabstat.relid
  ORDER BY index_name;
