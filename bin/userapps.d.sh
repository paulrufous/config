#!/bin/sh
# НЕ ЗАПУСКАТЬ этот скрипт из ~/.xsession, только из ~/.fluxbox/startup
# иначе при рестартах иксов он его ошметки не будут умирать
# Запущенные коньки при незапущенных иксах выглядят жестоко, пусть и
# только в списке процессов

LIST_FILE="$HOME/bin/userapps.d.list"
SLEEP_TIME=5

grep -vE "^ *#|^ *$" $LIST_FILE | while read DAEMON
do
    `(while true; do $DAEMON; sleep $SLEEP_TIME; done)`
done
