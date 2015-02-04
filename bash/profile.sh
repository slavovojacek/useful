#!/bin/bash

### Change prompt
export PS1='[\t] \w/ '

### Change editor
export EDITOR=nano

### Increase bash history to a million commands (should be enough)
HISTFILESIZE=10000000

### Add Alias for push.sh (can be found in the same repo dir)
alias push='bash push.sh'

### Alias for ls
alias ls='ls -G'

### Alias for ls -al
alias lsa='ls -al -G'

### Add Alias for ifstat -> logs internet stats to ~/internetStat.log (change e$
alias istats='ifstat -t -i en0 | tee ~/ifstat.log'