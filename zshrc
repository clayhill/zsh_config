source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  git
  colored-man-pages
  colorize
  command-not-found
  fasd
  jira
  gem
  battery
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-autosuggestions
  bartboy011/cd-reminder
  MikeDacre/cdbk
  gretzky/auto-color-ls
  rsync
  svn-fast-info
  clayhill/svn_aliasses
  clayhill/spaceship-prompt
EOBUNDLES

antigen apply

SPACESHIP_DIR_TRUNC="6"
SPACESHIP_EXIT_CODE_SHOW="true"
SPACESHIP_TIME_SHOW="true"

[ -f "~/.zshrc_aliasses" ] && source "~/.zshrc_aliasses"
