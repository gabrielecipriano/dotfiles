vacuum-repo() {
    git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -d
}

vacuum-repo-hard() {
    git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D
}

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/snap/bin"
