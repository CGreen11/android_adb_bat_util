:: 0：网络连接，非0：直连
IF %connect_flag%==0 (adb disconnect&&adb connect %devices_ip%)

adb shell setprop persist.net.eth1.mode 1    

adb shell setprop persist.net.eth1.staticinfo %new_ip%,24,%gateway%,114.114.114.114,219.141.136.10

adb reboot
