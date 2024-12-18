if [ -z "$RDB_HOST" ]; then
 echo RDB_HOST is missing
 exit 1
fi
if [ -z "$RDB_USER" ]; then
 echo RDB_USER is missing
 exit 1
fi
if [ -z "$RDB_PASSWORD" ]; then
 echo RDB_PASS is missing
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
mysql -h ${RDB_HOST} -u${RDB_USER} -p${RDB_PASSWORD} < schema/${component}.sql