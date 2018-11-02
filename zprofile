richardwildvacuum-repo() {
    git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -d
}

vacuum-repo-hard() {
    git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D
}

source $HOME/.system-custom
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/snap/bin"
export CATALINA_HOME="/home/gcipriano/tomcat-7/current"
