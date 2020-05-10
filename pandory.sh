#!/system/bin/sh

if ls /data/app/ | grep -q ppsspp; then
	true
else
	pm install -r ppsspp.apk;
	busybox cp -f -p controls.ini /data/media/0/PSP/SYSTEM/controls.ini;
	busybox cp -f -p ppsspp.ini /data/media/0/PSP/SYSTEM/ppsspp.ini;
	busybox cp -f -p controls.ini /storage/emulated/0/PSP/SYSTEM/controls.ini;
	busybox cp -f -p ppsspp.ini /storage/emulated/0/PSP/SYSTEM/ppsspp.ini;
	sleep 20;
fi

am start -n org.ppsspp.ppsspp/org.ppsspp.ppsspp.PpssppActivity

