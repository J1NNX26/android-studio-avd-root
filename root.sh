#! /bin/bash
$HOME/Android/Sdk/emulator/emulator -avd Pixel_3_XL -writable-system -selinux disabled -qemu -enable-kvm &
sleep 10
adb root && adb remount
adb install $HOME/Downloads/android-studio-avd-root/SuperSU/common/Superuser.apk
adb push SuperSU/x86/su /system/xbin/su
adb shell chmod 0755 /system/xbin/su
adb shell su --install
adb shell su --daemon&
adb install $HOME/Downloads/android-studio-avd-root/root-checker-6-5-0.apk
adb install $HOME/Downloads/android-studio-avd-root/XposedInstaller_3.1.5.apk