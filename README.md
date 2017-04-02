# shell_tools

some shell script

### adb命令

* 查询设备 adb devices
* 将命令发送至特定设备 adb -s serial_number command
* 安装应用 adb install apk_path
* 设置端口转发，将对特定主机端口的请求转发到模拟器的其他端口上
	* adb forward tcp:6100 tcp:7100
	* adb forward tcp:6100 local:logd  
* 从设备上复制文件 adb pull dir/file_path
* 发送文件到设备 adb push localfile remote
* 停止adb adb kill-server


#### 调试

* logcat 将日志输出到屏幕
* bugreport 将dumpsys、dumpstate、logcat数据输出到屏幕
* jdwp 输出给定设备上可用的jdwp进程的列表

#### 发出shell命令

adb shell shell_command

#### 调用Activity Manager(am)

adb shell am 

* start [options] intent
	* -D 启用调试
	* -W 等待启动完成
	* --start-profile file 启动分析器并将结果发送到file
	* -P file,类似上面，但是应用进入空闲时，停止
	* -R count,重复Activity启动count次数 
	* -S 启动Activity前强行停止目标应用
	* --opengl-trace 启动OpenGL函数的跟踪
	* --user user_id | current 指定要做哪个用户运行，未指定则是当前用户
	
* startservice [options] intent
* force-stop package 强行停止与package关联的所有应用
* kill [options] package
* kill-all 终止所有后台进程
* broadcast [options] intent
* instrument [options] component，使用Instrumentation实例启动监控，
	* -r 输出原始结果
	* -e name value,将参数name设为value，
	* -p file,将分析数据写入file
	* -w 先等待仪器完成，然后再返回。
	* --no-window-animation 运行时关闭窗口动画
* profile start process file，启动process的分新奇，将结果写入file
* profile stop process
* dumpheap [options] process file 转储process的堆，写入file
* set-debug-app [options] package，将应用package设为调试
* clear-debug-app 
* monitor [options] 启动对崩溃或ANR的监控
* screen-compat{on|off} oackage 控制屏幕兼容性模式
* display-size [reset|widthxheight] 替换模拟器、设备显示尺寸
* display-density dpi
* to-uri intent
* to-intent-uri intent

#### 调用软件包管理器 pm

adb shell pm command

* list package [ontions] filter
	* -f 查看他们的关联文件
	* -d 进行过滤以仅显示已停用的软件包
	* -e 进行过滤以仅显示已启动的软件包
	* -s 进行过滤以仅显示系统软件包
	* -3 仅显示第三方软件包
	* -i 查看软件包的安装程序
	* -u 也包括卸载的软件包
* list permission-groups 输出所有已知的权限组
* list permission [options] group，仅输出group中的权限
	* -g 按组加以组织
	* -f 输出所有信息
	* -s 简短摘要
	* -d 列出危险权限
	* -u 仅列出用户将看到的权限
* list instrumentation [options] 列出所有测试软件包
	* -f 列出用于测试软件包的APK文件
	* target_package 列出仅用于此应用的测试软件包
* list features 输出系统的所有功能
* list libraries 输出当前设备支持的所有库
* list users 输出系统上的所有用户
* path package 输出给定package的apk路径
* install [options] path 将软件包安装到系统
	* -l 安装具有转发功能的软件包
	* -r 重新安装现有应用，保留其数据
	* -t 允许安装测试apk
	* -i installer_package_name 指定安装程序软件包名称
	* -s 在共享的大容量存储上安装软件包
	* -f 在内部系统内存上安装软件包
	* -d 允许版本代码降级
	* -g 授予应用清单文件中列出的所有权限
* uninstall [options] package 从系统中移除软件包
	* -k 移除软件包后保留数据和缓存目录
* clear package 删除与软件包关联的所有数据
* enable package_or_component 启动给定软件包或组件
* disable package_or_component 删除与软件包关联的所有数据
* disable-user [options] package_or_component 
* grant package_name permission ，向应用授予权限
* revoke package_name permission 从应用中撤销权限
* set-install-location location 更改默认安装位置
	* 0 自动让系统决定最佳位置
	* 1 内部-安装子啊内部设备存储上
	* 2 外部-安装在外部介质上
* get-install-location 返回当前安装位置
* set-permission-enforced permission[true|false] 指定是否应强制执行给定的权限
* trim-caches desired_free_space 减少缓存文件以达到给定的可用空间
* create-user user_name 使用给定的user_name 创建新用户，输出新用户的标识符
* remove-user user_id 移动
* get-max-users 输出设备支持的最大用户数


#### 进行屏幕截图

adb shell screencap /sdcard/screen.png

#### 录制视频

adb shell screenrecord /sdcard/demo.mp4

* --help 显示命令语句和选项
* --size width x height 设置视频大小
* --bit-rate rate 设置视频的比特率
* --time-limit time 设置最大录制时长
* --rotate 讲输出旋转90度
* --version 显示命令行屏幕上的日志信息

#### 读取应用的ART配置文件

// 生成配置文件信息的文本表单
adb shell cmd package dump-profiles package

//检索生成的文件

adb pull /data/misc/profman/package.txt

#### 其他shell命令

adb shell ls /system/bin 



		     

 
