#!/bin/bash

cd $(dirname $BASH_SOURCE)
echo -e "\033[36m [Info] \033[0m-------------------------------------------------------"
echo -e "\033[36m [Info] \033[0m【        CHUWI CoreBook X 修复脚本 By weachy.        】"
echo -e "\033[36m [Info] \033[0m【 本脚本用于修复macOS Monterey下休眠唤醒蓝牙进程异常 】"
echo -e "\033[36m [Info] \033[0m-------------------------------------------------------"
echo -e "\033[36m [Info] \033[0m"

#安装blueutil
echo -e "\033[36m [Info] \033[0m蓝牙控制服务安装中..."
echo -e "\033[36m [Info] \033[0m我们需要root权限来修改一些配置文件，请授权..."
sudo mkdir -p /usr/local/bin/
sudo cp ./blueutil/2.9.0/blueutil /usr/local/bin/
sudo chmod +x /usr/local/bin/blueutil
echo -e "\033[32m [OK] \033[0m蓝牙控制服务安装完成..."

echo -e "\033[36m [Info] \033[0m睡眠监听服务安装中..."
#安装sleepwatcher
sudo mkdir -p /usr/local/sbin/ /usr/local/share/man/man8/
sudo cp ./sleepwatcher/2.2.1/sbin/sleepwatcher /usr/local/sbin/
sudo cp ./sleepwatcher/2.2.1/share/man/man8/sleepwatcher.8 /usr/local/share/man/man8/
sudo cp ./sleepwatcher/2.2.1/de.bernhard-baehr.sleepwatcher-20compatibility-localuser.plist /Library/LaunchAgents/ 
sudo chmod +x /usr/local/sbin/sleepwatcher
sudo chmod +x /usr/local/share/man/man8/sleepwatcher.8

echo -e "\033[32m [OK] \033[0m睡眠监听服务安装完成..."

#后续操作
cd ~
sudo rm -f .sleep
sudo rm -f .wakeup
touch .sleep
touch .wakeup
sudo chmod 777 .sleep
sudo chmod 777 .wakeup

cat>.sleep<<EOF
/usr/local/bin/blueutil -p 0
EOF
cat>.wakeup<<EOF
/usr/local/bin/blueutil -p 1
EOF
#启动服务
sudo launchctl load /Library/LaunchAgents/de.bernhard-baehr.sleepwatcher-20compatibility-localuser.plist

echo -e "\033[32m [OK] \033[0m服务已启动，请尝试重启生效..."