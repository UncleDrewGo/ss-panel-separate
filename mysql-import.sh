#!/bin/bash
# Name:bakmysql.sh
# This is a ShellScript For Auto DB Backup and Delete old Backup
#

uname="ssuser"
pword="sspasswd"

time=` date +%Y%m%d%H `
if [ $# != 1 ] ; then
echo "USAGE_BACKUPSQL: $0 xxx.sql"
exit 1;
fi
mysql -u $uname -p$pword<$(cd `dirname $0`; pwd)/backup/$1
echo backup file: $(cd `dirname $0`; pwd)/backup/$1
