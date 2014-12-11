SELECT	NULL::text AS "TABLE_CAT",
	quote_ident(n.nspname) AS "TABLE_SCHEM",
	quote_ident(c.relname) AS "TABLE_NAME",
	CASE
	  WHEN c.relkind = 'v' THEN
	    CASE
	      WHEN quote_ident(n.nspname) ~ '^pg_' THEN 'SYSTEM VIEW'
	      ELSE 'VIEW'
	    END
	  ELSE
	    CASE
	      WHEN quote_ident(n.nspname) ~ '^pg_' THEN 'SYSTEM TABLE'
	      ELSE 'TABLE'
	    END
	END AS "TABLE_TYPE",
	d.description AS  "REMARKS",
	quote_ident(t.spcname) AS "pg_tablespace_name",
	pg_tablespace_location(t.oid) AS "pg_tablespace_location",
--	quote_ident(t.spclocation) AS "pg_tablespace_location",
	n.nspname AS pg_schema,
	c.relname AS pg_table
  FROM pg_catalog.pg_class AS c
    LEFT JOIN pg_catalog.pg_description AS d ON (c.oid = d.objoid AND c.tableoid = d.classoid AND d.objsubid = 0)
    LEFT JOIN pg_catalog.pg_namespace n ON (n.oid = c.relnamespace)
    LEFT JOIN pg_catalog.pg_tablespace t ON (t.oid = c.reltablespace)
  WHERE c.relkind IN ('r', 'v')
    AND pg_tablespace_location(t.oid) IS NOT NULL
  ORDER BY "TABLE_TYPE", "TABLE_CAT", "TABLE_SCHEM", "TABLE_NAME";
