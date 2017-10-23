export JAVA_HOME=$(/usr/libexec/java_home)
export GOPATH=$HOME/.golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PS1="[\u@\h \W]\$ "

alias h='history'
alias ls='ls -FHG'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias showAllFiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias showNormalFilesOnly='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias goec2='ssh -A -i ~/Keys/ec2.dhf.im.pem -l ubuntu 52.196.40.253'

# portfw $local_port:$remote_host:$remote_port
# alias portfw='ssh $user@ssh_host -p $ssh_port -i $private_key_path -A -L'
# alias go='ssh $user@ssh_host -p $ssh_port -i $private_key_path -A'

#Bash should append rather than overwrite the history
shopt -s histappend
#Ignore small typos in directory names
shopt -s cdspell
#Ignore case when completing
set completion-ignore-case on
#When listing possible file completions, put / after directory names and * on files
set visible-stats on
#When displaying the prompt, write the previous line to disk
PROMPT_COMMAND='history -a'

if [ -d ~/.bash_profile.d ]; then
  for i in `find ~/.bash_profile.d -name '*.sh'`; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
