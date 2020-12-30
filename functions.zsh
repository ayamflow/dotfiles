function toLowerCase() {
    for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done
}

function killport() {
    pid=`lsof -i tcp:$1 | grep 'esbuild' | awk '{print $2}'`
    if [[ -n "$pid" ]]; then
        echo "killing pid ${pid} blocking on port $1"
        `kill -9 ${pid}`
    else
        echo "no process found for port $1"
    fi
}