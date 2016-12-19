#!/bin/bash
# Name:bakmysql.sh
# This is a ShellScript For Auto DB Backup and Delete old Backup
#

uname="ssuser"
pword="sspasswd"

time=` date +%Y%m%d%H `
if [ $# != 1 ] ; then
echo "USAGE_BACKUPSQL: $0 database"
exit 1;
fi

mysqldump -u $uname -p$pword --database $1 --single-transaction --compress --order-by-primary>$(cd `dirname $0`; pwd)/backup/$1$time.sql

echo backup file: $(cd `dirname $0`; pwd)/backup/$1.sql

