
alias rm="trash"
alias onproxy="proxychains4 -q -f ~/.proxychains.conf "
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
