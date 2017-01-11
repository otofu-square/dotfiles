#
# zplug
#
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'otofu-square/dotfiles', use:'zsh/*.sh', as:plugin

zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'zsh-users/zsh-history-substring-search'
zplug 'mollifier/anyframe'

zplug 'bhilburn/powerlevel9k', use:powerlevel9k.zsh-theme, defer:2

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
