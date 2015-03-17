# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll="ls -sail"
alias st="svn st | grep ^[MDAR] | sed 's/.* //g' | tr \"\n\" \" \" | sed 's/$/\n/g'"
                                                                                      
