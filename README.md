## 简介

- Lenovo ThinkPad T480s 黑苹果 EFI ，基于OC包含基础驱动，修改三码后开箱即用，不过我貌似也没咋个修改三码。
- 适用版本：macOS Bigsur  
- SIP正常 开启状态

### 硬件使用状态

* [x] 集成显卡 UHD620
* [x] 有线网
* [x] 无线网（隔空投屏，隔空投递）
* [x] 蓝牙 
* [x] 电池状态 
* [x] hidpi (1440*810 完美）
* [x] 声音
* [x] 触控板（多点触摸手势全开）
* [x] Fn+F1-F12 PtrSc（FN快捷键完美,PtrSc支持需要设置键盘快捷键 默认为CTRL+COMMAND+3 改为 F13）
* [x] 小红点
* [x] 休眠/唤醒/关机/重启 （电源LED、合盖/开盖全部状态正常）
* [x] USB全部端口 （多个USB不会出现供电问题）

## 使用方法

- 复制EFI到EFI分区 编辑EFI/OC/config.plist 使用OCC修改三码即可。
- 安装好系统过后，进入系统偏好设置 ---> 键盘 ---> 快捷键 ---> 截屏 --->【将屏幕图片存储成文件】 改为 PrtSc 备注：看到快捷提示为F13即可

## 必装工具 

- one-key-hidpi : 一键开启 macOS HiDPI
- ThinkpadAssistant : 开启THINKPAD驱动FN多功能键位
- yogaSMC.dmg : 一键开启风扇转速控制软件，防止过热。
## 致谢

- bdragonh https://github.com/bdragonh/T480S-BIGSUR-EFI
