SELECT	schemaname AS "Schema",
	relname AS "Table",
	(n_tup_ins + n_tup_upd + n_tup_del) AS "Write performance"
  FROM pg_stat_user_tables
  ORDER BY "Write performance" DESC, schemaname, relname ASC;
