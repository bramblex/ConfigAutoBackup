[[ ${TERM_PROGRAM} == 'Apple_Terminal' ]] && [[ ${UID} != 0 ]] && test -z "${TMUX}" && ( TERM=screen-256color-bce tmux attach -t main || tmux -2 new -s main) && exit
