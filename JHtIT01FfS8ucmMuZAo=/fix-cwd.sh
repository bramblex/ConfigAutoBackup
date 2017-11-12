

if [[ -n "${TMUX}" ]]
then
    TMUX_SEESION_NAME=$(tmux display-message -p '#S')
    TMUX_PWD_PATH="/tmp/${TMUX_SEESION_NAME}-pwd"
    function __CD__()
    {
        echo "${@}" > "${TMUX_PWD_PATH}"
        "cd" ${@}
    }

    if  [[ -f "${TMUX_PWD_PATH}" ]]
    then
        "cd" $(cat ${TMUX_PWD_PATH})
    fi

    alias cd="__CD__"
fi
