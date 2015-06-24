#!/usr/bin/env bash
function subst() {
  perl -pi -e "$1"  /var/lib/postgresql/data/postgresql.conf
}
subst "s/#log_statement = 'none'/log_statement = 'all'/g"
subst "s/#log_line_prefix = ''/log_line_prefix = '<%c|%v|%x>'/g"
subst "s/#log_connections = off/log_connections = on/g"
