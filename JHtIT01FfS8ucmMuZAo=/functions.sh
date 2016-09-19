
alias rm="trash"
alias onproxy="proxychains4 -q -f ~/.proxychains.conf "

function cpptest(){
    g++ ${@} -o /tmp/a.out && /tmp/a.out
}
