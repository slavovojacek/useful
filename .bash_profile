#!/bin/bash

### Change prompt
export PS1='[\t] \w/ '

### Change editor
export EDITOR=nano

### Increase bash history to a million commands (should be enough)
HISTFILESIZE=10000000

### Alias for ls
alias ls='ls -G'

### Alias for ls -al
alias lsa='ls -al -G'

### Add Alias for grepping bash history (takes param)
function gh {
	cat ~/.bash_history | grep $1
}

### A funny alias to replace ls and cd after a person has left their laptop unlocked
alias funny='printf "\n\nAn extensive policy breach detected. Please stay at your desk as security personel will assist you out of the building.\n\n"'