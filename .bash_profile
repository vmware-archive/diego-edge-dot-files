export PATH="/usr/local/bin:$PATH"

# Path to the bash it configuration
export BASH_IT="/Users/pivotal/.bash_it"

# Lock and Load a custom theme file
export BASH_IT_THEME="bobby"

# Load Bash It
source $BASH_IT/bash_it.sh

export PATH=$PATH:~/workspace/go/bin
export GOPATH=~/workspace/diego-release

export PULL_DOCKER_IMAGE=false #do not pull docker images when using diego-lite pipeline run_with_docker helper

alias cd-whetstone="cd $GOPATH/src/github.com/pivotal-cf-experimental/whetstone"
alias cd-lattice="cd /Users/pivotal/workspace/lattice"
alias cd-gopath="cd $GOPATH"
alias cd-cli="cd $GOPATH/src/github.com/pivotal-cf-experimental/lattice-cli"
alias reset-dns="sudo killall -HUP mDNSResponder"
alias empty-etcd="curl -L http://192.168.11.11:4001/v2/keys/v1/desired/?recursive=true -XDELETE"
alias reload-dnsmasq="sudo launchctl stop homebrew.mxcl.dnsmasq && sudo launchctl start homebrew.mxcl.dnsmasq"
$(boot2docker shellinit)
~/workspace/bosh-lite/bin/add-route
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
[ -f ~/.bashrc ] && source ~/.bashrc

