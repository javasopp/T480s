#!/bin/bash

echo -e "\033[32m [OK] \033[0m正在停止服务中..."

sudo launchctl unload /Library/LaunchAgents/de.bernhard-baehr.sleepwatcher-20compatibility-localuser.plist
sudo pkill sleepwatcher
echo -e "\033[32m [OK] \033[0m服务已停止..."
sudo rm -f /Library/LaunchAgents/de.bernhard-baehr.sleepwatcher-20compatibility-localuser.plist
sudo rm -f /usr/local/sbin/sleepwatcher
sudo rm -f /usr/local/bin/blueutil
sudo rm -f /usr/local/share/man/man8/sleepwatcher.8

echo -e "\033[32m [OK] \033[0m正在清理残余文件中..."
cd ~
sudo rm -f .sleep
sudo rm -f .wakeup
echo -e "\033[32m [OK] \033[0m清理完毕..."