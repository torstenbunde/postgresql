SELECT	relname,
	heap_blks_read,
	heap_blks_hit,
	round(heap_blks_hit::numeric/(heap_blks_hit + heap_blks_read), 3)
  FROM pg_statio_user_tables
  WHERE heap_blks_read > 0
  ORDER BY 4, 1;
