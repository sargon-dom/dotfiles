#=============================
# Homebrew
#=============================
export PATH=/usr/local/bin:$PATH

#=============================
# rbenv
#=============================
if [ -d ${HOME}/.rbenv  ] ; then
  PATH=${HOME}/.rbenv/bin:${PATH}
  export PATH
  eval "$(rbenv init -)"
fi