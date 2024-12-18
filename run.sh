if [ -z "$RDB_HOST" ]; then
 echo DB-HOST is missing
 exit 1
fi
if [ -z "$RDB_USER" ]; then
 echo DB_USER is missing
 exit 1
fi
if [ -z "$RDB_PASS" ]; then
 echo DB_PASS is missing
 exit 1
fi
if [ -z "$component" ]; then
 echo component is missing
fi
if [ -z "$project_name" ]; then
 echo project name is missing
fi
git clone https://github.com/pdevpos/${project_name}-${component}.git
cd ${project_name}-${component}
mysql -h ${DB_HOST} -u${DB_USER} -p${DB_PASS} < schema/${component}.sql