:: 中文乱码
chcp 65001

::创建输出文件夹
IF NOT EXIST %result_path% (md "%result_path%") 

:: 0：网络连接，非0：直连
IF %connect_flag%==0 (adb disconnect&&adb connect %devices_ip%)

::调用txt，缺点是无法使用变量
::adb shell < shell/db.txt

::su 0默认有权限
::SET shell_cmd="chmod 777 %db_path%"
::adb shell su 0 %shell_cmd%

:: su0是Android中su执行后续指令的一种标准写法
:: su-c是Linux中支持的指令，但是并不是所有的Linux指令都会在Android中被支持
adb shell su 0 "cp %db_path%/%db_name%.db  /sdcard/%db_name%.db"

adb pull /sdcard/%db_name%.db %result_path%/%db_name%.db

adb shell rm -f /sdcard/%db_name%.db

adb disconnect