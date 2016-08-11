echo "parse_git_branch() {" >> ~/.bashrc 
echo "     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'" >> ~/.bashrc
echo "}" >> ~/.bashrc
echo "export PS1=\"\u@\h \[\033[33m\]\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ \"" >> ~/.bashrc 
