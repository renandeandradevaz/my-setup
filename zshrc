export ZSH="/home/renan.vaz/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# default directory to install new applications
export MY_APPS_ROOT=/usr/local

# alias 
alias git_clear_all='git reset && git clean -f && git checkout .'
alias docker_clear_all='docker rm -f $(docker ps -a -q) || true && docker rmi -f $(docker images -q) || true'

# Adding Python applications to PATH
export PATH=$HOME/.local/bin:$PATH

# PHP - Laravel
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Java, maven, gradle
export JAVA_HOME=${MY_APPS_ROOT}/jdk1.8.0_221
export PATH=${JAVA_HOME}/bin:${PATH}
#export MAVEN_HOME=${MY_APPS_ROOT}/apache-maven-3.0.5
#export MAVEN_HOME=${MY_APPS_ROOT}/apache-maven-3.2.2
export MAVEN_HOME=${MY_APPS_ROOT}/apache-maven-3.6.1
export M2_HOME=${MAVEN_HOME}
export PATH=${MAVEN_HOME}/bin:${PATH}
export GRADLE_HOME=${MY_APPS_ROOT}/gradle/gradle-6.1.1
export PATH=${GRADLE_HOME}/bin:${PATH}

# GraalVM
export GRAALVM_HOME=${MY_APPS_ROOT}/graalvm-ce-1.0.0-rc14
export PATH=${GRAALVM_HOME}/bin:${PATH}

# Golang
export PATH=$PATH:${MY_APPS_ROOT}/go/bin

# Nodejs
export PATH=${MY_APPS_ROOT}/node-v10.16.3-linux-x64/bin:${PATH}
