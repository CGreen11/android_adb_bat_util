:: 0：网络连接，非0：直连
SET connect_flag=0

:: 网络连接 ： android的ip地址
SET devices_ip=192.168.1.25

:: IP
SET new_ip=192.168.2.10

:: 网关
SET gateway=192.168.2.1

:: 运行逻辑
call shell/set_ip.bat