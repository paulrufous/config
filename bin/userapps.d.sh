#!/bin/sh
# НЕ ЗАПУСКАТЬ этот скрипт из ~/.xsession, только из ~/.fluxbox/startup
# иначе при рестартах иксов он его ошметки не будут умирать
# Запущенные коньки при незапущенных иксах выглядят жестоко, пусть и
# только в списке процессов

xxkb_daemon() {
    xxkb; xxkb_daemon
}
xxkb_daemon&

conkympd_daemon() {
    conky; conkympd_daemon
}
conkympd_daemon&

conkyclock_daemon() {
    conky -c ~/.conkyrc-diclock; conkyclock_daemon
}
conkyclock_daemon&
