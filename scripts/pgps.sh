#!/bin/bash
# Script to see what is taking so long in the postgres database
cd /opt/nba_colander
docker-compose exec -T postgres psql postgres postgres -c "SELECT pid, now() - pg_stat_activity.query_start AS duration, query, state FROM pg_stat_activity WHERE (now() - pg_stat_activity.query_start) > interval '10 seconds';" 
cd - 
