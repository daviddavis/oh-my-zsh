function vundle-init () {
  if [[ ! -d ~/.vim/bundle/Vundle.vim/ ]]; then
    mkdir -p ~/.vim/bundle/Vundle.vim/
  fi

  if [[ ! -d ~/.vim/bundle/Vundle.vim/.git ]] && [[ ! -f ~/.vim/bundle/Vundle.vim/.git ]]; then
    git clone http://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "\n\tIn order to use the vundle commands, you will need to configure your .vimrc file."
    echo "\tRead more about how to configure vundle at https://github.com/VundleVim/Vundle.vim\n"
  fi
}

function vundle () {
  vundle-init
  vim -c "execute \"PluginInstall\" | q | q"
}

function vundle-update () {
  vundle-init
  vim -c "execute \"PluginInstall!\" | q | q"
}

function vundle-clean () {
  vundle-init
  vim -c "execute \"PluginClean!\" | q | q"
}
