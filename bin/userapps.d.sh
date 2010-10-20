#!/bin/sh
# НЕ ЗАПУСКАТЬ этот скрипт из ~/.xsession, только из ~/.fluxbox/startup
# иначе при рестартах иксов он его ошметки не будут умирать
# Запущенные коньки при незапущенных иксах выглядят жестоко, пусть и
# только в списке процессов

#~ ПЕРВАЯ ВЕРСИЯ. ИНДУСОКОД
#~ xxkb_daemon() {
    #~ xxkb; xxkb_daemon
#~ }
#~ xxkb_daemon&
#~ 
#~ 
#~ conkympd_daemon() {
    #~ conky; conkympd_daemon
#~ }
#~ conkympd_daemon&
#~ 
#~ conkyclock_daemon() {
    #~ conky -c ~/.conkyrc-diclock; conkyclock_daemon
#~ }
#~ conkyclock_daemon&

(while true; do xxkb; sleep 5; done)&
(while true; do conky; sleep 5; done)&
(while true; do conky -c ~/.conkyrc-diclock; sleep 5; done)&
