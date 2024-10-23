#
# zplug
#
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'otofu-square/dotfiles', use:'zsh/*.sh', as:plugin

zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'zsh-users/zsh-history-substring-search'
zplug "g-plane/pnpm-shell-completion", hook-build:"./zplug.zsh", defer:2
zplug 'mollifier/anyframe'

zplug romkatv/powerlevel10k, as:theme, depth:1

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
