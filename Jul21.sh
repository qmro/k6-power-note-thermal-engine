#!/system/bin/sh
sleep 30
echo 4 > /sys/class/kgsl/kgsl-3d0/default_pwrlevel
echo 1856 > /sys/class/timed_output/vibrator/vtg_level
echo 90 > /sys/devices/system/cpu/cpu0/core_ctl/task_thres
echo 20 > /proc/sys/fs/lease-break-time
echo noop > /sys/block/mmcblk0/queue/scheduler
echo 64 > /sys/block/mmcblk0/queue/nr_requests
chmod 644 /sys/module/msm_performance/parameters/cpu_min_freq
echo 0:345600 1:345600 2:345600 3:345600 4:249600 5:249600 6:249600 7:249600 > /sys/module/msm_performance/parameters/cpu_min_freq
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 345600 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 249600 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 4-7 > /dev/cpuset/system-background/cpus
echo 4-7 > /dev/cpuset/foreground/cpus
echo 4-7 > /dev/cpuset/background/cpus
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay
echo 200000 1209400:200000 1248000:400000 1401000:800000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/interactive/above_hispeed_delay
echo 200000 902400:200000 998600:400000 1094400:800000 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/above_hispeed_delay
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/interactive/target_loads
echo 1 249000:70 518400:80 902400:90 998400:99 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/target_loads
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads
echo 1 345000:60 729600:70 960000:80 1209400:90 1248000:99 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads
echo 1 > /sys/devices/system/cpu/cpu0/core_ctl/is_big_cluster
echo 40 40 40 40 > /sys/devices/system/cpu/cpu0/core_ctl/busy_down_thres
echo 80 80 80 80 > /sys/devices/system/cpu/cpu0/core_ctl/busy_up_thres
echo 50 50 50 50 > /sys/devices/system/cpu/cpu4/core_ctl/busy_down_thres
echo 80 80 80 80 > /sys/devices/system/cpu/cpu4/core_ctl/busy_up_thres
echo 1 > /sys/class/kgsl/kgsl-3d0/bus_split
echo 0 > /sys/class/kgsl/kgsl-3d0/force_bus_on
echo 0 > /sys/class/kgsl/kgsl-3d0/force_rail_on
echo 0 > /sys/class/kgsl/kgsl-3d0/force_clk_on
