postgresql
==========
Information, code and scripts for my daily work with PostgreSQL

files:
buffer_cache_user_tables	Shows I/O statistics on user tables.
does_column_exists.sql		Shows if a column exists or not.
grep_pid_log			Short shell script to grep all data from log file that belongs to a special pid.
				usage: grep_pid_log <UID>
indexsizes.sql			Show index sizes.
nonidle_processes.sql		Display nonidle postgres queries.
pgsql_check_queries		Script for checking number of active and running transactions.
pgsql_export_functions		Shell script for exporting functions from database dump files.
pgsql_export_sequences		Shell script for exporting sequences from database dump files.
pgsql_export_views		Shell script for exporting views from database dump files.
pgtop_query_sampling		Script showing query run times or send them by mail.
postgres_mem			Postgresql Memory Configuration and Sizing Script.
prepared_transactions.sql       SQL statement showing prepared transactions
roles_usernames.sql		Shows roles owned by users.
running_queries.sql             SQL statement showing running queries
sequence_lag.sql		SQL to find out which sequence number/s is/are missing in a table.
statements_and_locks.sql        SQL statement showing blocked statements
stats_index_usage.sql           SQL statement for creating stats about index usage
ungranted_locks.sql             SQL statement showing number of ungranted locks
used_tablespaces.sql		Show used tablespaces.
users_connections.sql           SQL statement showing users and connections
write_performance.sql		Shows wrtite performance of tables.
