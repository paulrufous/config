# [почти]нормальный вид java-приложений
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"


# Автозапуск иксов при логине пользователем в первой консоли
if [ $USER = sio  ] && [ "`tty`" = "/dev/tty1" ]; then
    setsid startx;
    exit;
else
    clear;
fi
