#!/bin/sh
set -e
/wait
rm -f /docker_build/tmp/pids/server.pid
bundle exec rake sunspot:solr:start
exec "$@"
