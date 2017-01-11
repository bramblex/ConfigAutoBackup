
__HTTP_PROXY__="http://127.0.0.1:1081"
__SOCKS5_PROXY__="socks5://127.0.0.1:1080"

alias rm="trash"
alias onproxy="http_proxy=${__HTTP_PROXY__} https_proxy=${__HTTP_PROXY__} HTTP_PROXY=${__HTTP_PROXY__} HTTPS_PROXY=${__HTTP_PROXY__} ALL_PROXY=${__SOCKS5_PROXY__} all_proxy=${__SOCKS5_PROXY__}"
alias onproxychains="proxychains4 -q -f ~/.proxychains.conf"
alias pac="node ~/.ShadowsocksX/gfwlist.js"


function cpptest(){
    g++ ${@} -o /tmp/a.out && /tmp/a.out
}

function encrypt(){
    for file in ${@}
    do
        openssl aes-128-cbc -salt -in ${file} -out ${file}'.aes'
    done
}

function decrypt(){
    for file in ${@}
    do
        openssl aes-128-cbc -d -salt -in ${file} -out ${file%'.aes'}
    done
}

function restartWhileError(){
    echo "RUN: ${@}"
    ${@}
    local code=${?}
    while [[ ${code} != 0 ]]
    do
        echo "ERROR WITH CODE: ${code}"
        echo "RESTART: ${@}"
        ${@}
    done
}
