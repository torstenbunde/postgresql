SELECT	rolname,
	usename
  FROM pg_user
    JOIN pg_auth_members ON (pg_user.usesysid = pg_auth_members.member)
    JOIN pg_roles ON (pg_roles.oid = pg_auth_members.roleid)
  ORDER BY rolname, usename;
