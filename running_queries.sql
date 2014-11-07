SELECT /* pg_stat_activity */
  * FROM pg_stat_activity
  WHERE current_query != '<IDLE>';
