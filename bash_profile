export AD_USERNAME=adnanwahab
yodle_dev_include_repo_prompt=1
source $HOME/.yodle-dev-shell-utils/conf/sh/all

export GRADLE_OPTS="-Dfile.encoding=UTF-8"
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

removeFromPath ()
{
    export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

setHaProxyAlias ()
{
    sudo ifconfig lo0 alias 172.17.32.1
}

PATH=$PATH:/workspace/src/yodlecore/ThriftTools/Thrift/bin
