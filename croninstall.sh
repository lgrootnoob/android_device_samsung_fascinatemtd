#!/system/xbin/sh
echo "Preparing Cron Directory"; 
busybox mount -o remount,rw -t auto /system 2>/dev/null;
mkdir /system/etc/cron.d 2>/dev/null;
echo "Preparing Cron Trigger";
chmod 755 /system/etc/init.d/01cron;
exit 0