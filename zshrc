ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"

# Add ruby version on prompt (float right)
if [ -x "$(command -v rbenv)" ]; then RPS1='[$(ruby_prompt_info)]$EPS1'; fi

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast brew rbenv last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
export PATH="./bin:${PATH}"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"
alias  bi='bundle install'
alias  gcmp='git checkout master && git pull'
alias  rdbdcms='rails db:drop && rails db:create && rails db:migrate && rails db:seed'
alias  rdbm='rails db:migrate'
alias  rs='rails s'
alias  fs='foreman start -f Procfile.dev'
alias  gs='git status'
alias  gaa='git add .'
alias  gca='git commit .'
alias  cdroot='cd $(git rev-parse --show-cdup)'
alias  cdms='cd client/app/bundles/MySkate/'
alias  bs='cd ~ && nohup google-chrome https://127.0.0.1:57575/ && nohup  butterfly.server.py | exit'
alias  rsl='touch -f ~/Téléchargements/rails.log && rails s > ~/Téléchargements/rails.log & google-chrome /home/doudou/Téléchargements/rails.log'
alias  ct='rm -r -f ~/Téléchargements/ && mkdir ~/Téléchargements/'


export NVM_DIR="/home/doudou/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#Add rvm starting script
source ~/.rvm/scripts/rvm


