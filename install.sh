#!/usr/bin/env bash

function add_zsh_to_profile() {
  zsh_path=$(which zsh)

  echo "" >> ~/.profile
  echo "# Added by ROEVA for zsh" >> ~/.profile
  echo 'export SHELL=$(which zsh)' >> ~/.profile
  echo '[ -z "$ZSH_VERSION" ] && exec $SHELL -l' >> ~/.profile

  source ~/.profile
}

function change_shell() {
  if [ "$SHELL" != "$(which zsh)" ]; then
    echo "User shell is not zsh. Changing..."
    if ! chsh -s $(which zsh); then
      echo "Failed with chsh. Setting .profile"
      add_zsh_to_profile
    fi
  fi
}

function install_antigen() {
  echo "Installing antigen"
  git clone https://github.com/zsh-users/antigen.git ~/.antigen
  cp antigenrc ~/.antigenrc
}

function update_zshrc() {
  cp zshrc ~/.zshrc
}

if ! which zsh; then
  echo "zsh is not installed on the system."
  exit 1
fi

install_antigen
update_zshrc
change_shell
