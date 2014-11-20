SELECT	pid,
	client_addr,
	query,
	(NOW() - query_start) AS elapsed
  FROM pg_stat_activity
  WHERE query != ''
  ORDER BY elapsed DESC;
