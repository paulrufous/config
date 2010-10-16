# int log_end_message (int exitstatus)
log_end_msg () {
    # If no arguments were passed, return
    if [ -z "${1:-}" ]; then
        return 1
    fi

    retval=$1

    log_end_msg_pre "$@"

    # Only do the fancy stuff if we have an appropriate terminal
    # and if /usr is already mounted
    if log_use_fancy_output; then
        RED=`$TPUT setaf 1`
        GREEN=`$TPUT setaf 2`
        YELLOW=`$TPUT setaf 3`
        NORMAL=`$TPUT setaf 7; $TPUT op`
    else
        RED=''
        GREEN=''
        YELLOW=''
        NORMAL=''
    fi

    if [ $1 -eq 0 ]; then
        /bin/echo -e " [${GREEN}OK${NORMAL}]"
    elif [ $1 -eq 255 ]; then
        /bin/echo -e " [${YELLOW}WARNING${NORMAL}]"
    else
        /bin/echo -e " [${RED}FAILED${NORMAL}]"
    fi
    log_end_msg_post "$@"
    return $retval
}
log_action_end_msg () {
    log_action_end_msg_pre "$@"
    if [ -z "${2:-}" ]; then
        end=""
    else
        end=" ($2)"
    fi

    # Only do the fancy stuff if we have an appropriate terminal
    # and if /usr is already mounted
    if log_use_fancy_output; then
        RED=`$TPUT setaf 1`
        BLUE=`$TPUT setaf 4`
        NORMAL=`$TPUT setaf 7; $TPUT op`
    else
        RED=''
        BLUE=''
        NORMAL=''
    fi

    if [ $1 -eq 0 ]; then
        /bin/echo -e "[${BLUE}DONE${end}${NORMAL}]"
    else
        /bin/echo -e "[${RED}FAILED${end}${NORMAL}]"
    fi
    log_action_end_msg_post "$@"
}
