# rm -rf ./dist && \

echo '更新代码前先删除文件夹 dist、public';

# 拷贝静态文件

cp -r ./dist/* ../spider-admin-pro/spider_admin_pro/web/public

echo '部署完成'
echo '**************************************'
echo '    http://127.0.0.1:5000             '
echo '**************************************'
