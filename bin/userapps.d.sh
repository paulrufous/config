#!/bin/sh
# НЕ ЗАПУСКАТЬ этот скрипт из ~/.xsession, только из ~/.fluxbox/startup
# иначе при рестартах иксов он его ошметки не будут умирать
# Запущенные коньки при незапущенных иксах выглядят жестоко, пусть и
# только в списке процессов

(while true; do xxkb; sleep 5; done)&
(while true; do conky; sleep 5; done)&
(while true; do conky -c ~/.conkyrc-diclock; sleep 5; done)&
