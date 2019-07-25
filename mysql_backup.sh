# 数据库登录参数
 user="root"
 password="password"
 host="127.0.0.1"
 port="3306"
 db_name="db_name"
# 备份到哪个目录
 backup_path="/usr/mysql_backup"
# 当天年月日
 date=$(date +"%Y-%m-%d")
# 数据库到SQL文件
 mysqldump -u$user -p$password -h$host -P$port $db_name > $backup_path/$db_name-$date.sql
# 备份写入日志
 echo "$backup_path/$db_name-$date" >> $backup_path/log.txt
