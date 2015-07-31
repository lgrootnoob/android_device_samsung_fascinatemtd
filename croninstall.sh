#!/system/xbin/sh
echo "Preparing Cron Directory"; 
busybox mount -o remount,rw -t auto /system 2>/dev/null;
mkdir /system/etc/cron.d 2>/dev/null;
cat /tmp/root > /system/etc/cron.d/root;
echo "Preparing Cron Trigger";
cat /tmp/01cron > /system/etc/init.d/01cron;
chmod 755 /system/etc/init.d/01cron;
chmod 755 /system/etc/cron.d/root;
chmod 755 /system/bin/trim_partitions;
exit 0
