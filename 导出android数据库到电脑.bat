:: 中文乱码
chcp 65001

:: android的ip地址
SET devices_ip=192.168.2.20 

:: 所有日志输出到电脑的位置，非中文，结尾不带分隔符
SET result_path=result

:: android的数据库位置
SET db_path=/data/data/bjkcst.com.myapplication/databases/

:: android的数据库名
SET db_name=kc141

:: 0：网络连接，非0：直连
SET connect_flag=1

:: 运行逻辑
call shell/pull_db.bat

pause