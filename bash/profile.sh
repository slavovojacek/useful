#!/bin/bash

### Change prompt
export PS1='[\t] \w/ '

### Change editor
export EDITOR=nano

### Increase bash history to a million commands (should be enough)
HISTFILESIZE=10000000

### Add Alias for push.sh (can be found in the same repo dir)
alias push='bash push.sh'