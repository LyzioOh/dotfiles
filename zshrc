
ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Load rbenv if installed
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"

# NVM and RVM
export PATH="$PATH:$HOME/Library/Python/2.7/bin/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PATH="$PATH : « yarn global bin  »"
export PATH="$PATH :./node_modules/.bin"
export EDITOR='nano'
export MAILOOP_DOCS='/Users/edouardetancelin/Wellbee/mailoop - Mailoop'
export MAILOOP="$HOME/code/mailoop"
#source "${MAILOOP}/dotfiles/.zshrc"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"

export FIREFOX="/Applications/Firefox Developer Edition.app/Contents/MacOS/firefox"

#Go
export PATH="$PATH:/usr/local/go/bin"

# Docker AutoCompletion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/edouardetancelin/code/mailoop/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/edouardetancelin/code/mailoop/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/edouardetancelin/code/mailoop/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/edouardetancelin/code/mailoop/node_modules/tabtab/.completions/sls.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load nvm Use
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

### Define nano as default git

add-zsh-hook chpwd load-nvmrc# fnm
eval "$(fnm env --multi)"
export TDD=true
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
export TEST_ENV_NUMBER='3'
export CIRCLE_TOKEN="dd5295d1331c7c7f28ff01724b480295a8e14580"
export GITHUB_PERSONNAL_TOKEN="ea05a163b76c71a5e02dbc088396d1809ea7fa33"
export PAGER=cat

export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"

# simulates iTerm i386 within VSCode Integrated Terminal
if [[ $TERM_PROGRAM == "vscode" ]] && [[ $(arch) == "arm64" ]];
then
  exec arch -x86_64 $SHELL
fiexport BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
