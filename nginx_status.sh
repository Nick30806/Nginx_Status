#!/bin/sh
nginx_status=`ps -aux | grep "worker process"`
#end_count=84
#start_count=171
echo $start_count
present_status=${#nginx_status}
if [ $present_status -lt 120 ]; then
 /usr/local/nginx/sbin/nginx
    echo `date` >> /usr/local/nginx/nginx_restart.log
    echo "偵測Nginx已關閉 立即啟動中！！！" >> /usr/local/nginx/nginx_restart.log
fi