:: 中文乱码
chcp 65001

::创建输出文件夹
IF NOT EXIST %result_path% (md "%result_path%") 

:: 0：网络连接，非0：直连
IF %connect_flag%==0 (adb disconnect&&adb connect %devices_ip%)

adb pull %code_log_path%   %result_path%

adb shell dumpsys meminfo >%result_path%/meminfo.txt

adb shell dumpsys gfxinfo >%result_path%/FPS.txt 

adb shell dmesg >%result_path%/dmesg.txt

adb logcat -d -v threadtime>%result_path%/app.log

adb shell cp /data/anr/traces.txt sdcard/anr.txt

adb shell cp /proc/cpuinfo sdcard/cpuinfo.txt

adb pull /sdcard/anr.txt  %result_path%/anr.txt

adb pull /sdcard/cpuinfo.txt %result_path%/cpuinfo.txt

adb shell rm -f /sdcard/anr.txt

adb shell rm -f /sdcard/cpuinfo.txt

adb disconnect