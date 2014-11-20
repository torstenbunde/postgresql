SELECT (lag + 1) AS missing_sequence
  FROM (SELECT id, lag(id) OVER (ORDER BY id)
	  FROM XXX
	  ORDER BY id
  ) a
  WHERE (id - lag) > 1;
