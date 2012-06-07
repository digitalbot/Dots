# bash_functions
#

#func test
function timer {
    if [ $1 ];
    then
        echo 'start 3 minutes timer --say-mode'
        sleep 120
        echo '2 minutes'
        say "two minutes"
        sleep 60
        echo 'finish'
        say "finish"
    else
        echo 'start 3 minutes timer'
        sleep 120
        echo '2 minutes'
        sleep 60
        echo 'finish'
    fi
}

function proxy_waseda {
    export http_proxy="http://www-proxy.mse.waseda.ac.jp:8080"
    export HTTP_PROXY="http://www-proxy.mse.waseda.ac.jp:8080"
    export ALL_PROXY="http://www-proxy.mse.waseda.ac.jp:8080"
}

function proxy_acoust {
    export http_proxy="http://www-proxy.waseda.jp:8080"
    export ALL_PROXY="http://www-proxy.waseda.jp:8080"
}

function wi {
    case `type -t "$1"` in
    alias|function) type "$1";;
    file) L `command -v "$1"`;;
    function) type "$1";;
    esac
}

function cdh() {
    cd
    if [ $# = 1 ]; then
        cd $1
    fi
}

function up {
    cd ../
}

function share_history {
    history -a
    history -c
    history -r
}

function m3m() {
    FILENAME=$1
    if [ $# -lt 1 ]; then
        echo "Usage: $0 FILENAME"
    else
        github-markup $FILENAME | w3m -T text/html
    fi
}

function p3m() {
    FILENAME=$1
    if [ $# -lt 1 ]; then
        echo "Usage: $0 FILENAME"
    else
        pdftohtml -enc UTF-8 $FILENAME -stdout | w3m -T text/html
    fi
}

# function ql() {
#     COMMAND=$1
#     if [ $# -lt 1 ]; then
#         echo "Usage: $0 COMMAND"
#     else
#         `COMMAND` > ~/.temp.txt
#         qlmanage -p "$@" >& /dev/null ~/.temp.txt
#         rm ~/.temp.txt
#     fi
# }
