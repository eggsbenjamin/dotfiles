export REPOS=~/repos

export WORK=$REPOS/work
export GOPATH=~/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go
export GOPRIVATE=github.com/sky-uk/* # for go mod to use ssh when accessing sky-uk repos
export GOHUB=$GOPATH/src/github.com
export GOSKY=$GOPATH/src/github.com/sky-uk
export GOWORK=$GOSKY
export GOME=$GOPATH/src/github.com/eggsbenjamin
export GOSP=$GOME/scratchpad
export GO111MODULE=on
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export ANDROID_HOME=~/Library/Android/sdk
export PROTOBUF_PATH=/opt/protobuf

export PATH=$PATH:$GOBIN:$GOROOT/bin:$JAVA_HOME/bin:$PROTOBUF_PATH/bin:/usr/local/sbin:/usr/local/kubebuilder/bin:/usr/local/go/bin:/opt/spark-2.4.3-bin-hadoop2.7/bin
export TERM="xterm-256color"
export DEFAULT_USER="$(whoami)"
export GPG_TTY=$(tty)
export SPARK_HOME=/opt/spark-2.4.3-bin-hadoop2.7
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.7-src.zip
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/pyspark:$PYTHONPATH

 #Path to your oh-my-zsh installation.
export ZSH="/Users/${DEFAULT_USER}/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k" #"agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git go kubectl kube-ps1 zsh-completions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# k8s

alias maxima="rlwrap /Applications/Maxima.app/Contents/Resources/maxima.sh"
alias ll='ls -lah'

alias k=kubectl
alias ka='kubectl apply'
alias kc='kubectl create'
alias kd='kubectl describe'
alias kdel='kubectl delete'
alias ke='kubectl edit'
alias kg='kubectl get'
alias kl='kubectl logs'
alias klf='kubectl logs -f'
alias koot='kubectl run koot --restart=Never -t -i -n kube-system --image overridden --overrides '\''{"spec":{"hostPID": true, "hostNetwork": true, "hostIPC": true, "containers":[{"name":"alpine","image":"alpine:3.7","command":["nsenter","--mount=/proc/1/ns/mnt","--","/bin/bash"],"stdin": true,"tty":true,"securityContext":{"privileged":true}}]}}'\'' --rm --attach'
alias kr='kubectl replace'
alias ku='kubectl update'
alias kx='kubectl exec'

alias kctx="kubectx"
alias kns="kubens"

PROMPT=$PROMPT'$(echo "\n$(kube_ps1)\n \$ ")'


# productivity

alias preview="open -a Preview"
#alias swagger="docker run --rm -it -e GOPATH=$HOME/go:/go -v $HOME:$HOME -w $(pwd) quay.io/goswagger/swagger:v0.24.0"
alias openapi-generator="docker run --rm -v $PWD:$PWD -w $PWD openapitools/openapi-generator-cli"
alias vscode="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

# functions

getVBoxIP() {
  VBoxManage guestproperty enumerate $1 | grep IP | awk -F "," '{print $2}' | awk -F ":" '{print $2}' | tr -d '[:space:]'
}

loginsky() {
  eval $(skylogin)
  export AWS_DEFAULT_REGION=us-west-2
}


loginecr() {
  eval $(aws ecr get-login --no-include-email)
}

deleteAllK8sResources(){
  for sib in `kg $2 -n $1 -o name `; do kdel $sib -n $1; done
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
