SELECT	COUNT(*) AS "Anzahl",
	usename AS "Benutzer",
	current_query AS "Abfrage"
  FROM pg_stat_activity
  WHERE current_query NOT LIKE '<IDLE%'
  GROUP BY usename, current_query
  ORDER BY "Anzahl" DESC, "Benutzer";
