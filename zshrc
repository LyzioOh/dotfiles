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
##
## Rails
alias  rdbdcms='rails db:drop && rails db:create && rails db:migrate && rails db:seed'
alias  rdbm='rails db:migrate'
alias  rs='rails s'
alias  rr='rails routes'
alias  fs='foreman start -f Procfile.dev'
alias  rc='rails console'
alias  bi='bundle install'
##
## Directory
alias  cd-ee='cd ~/eetancelin'
alias  cd-gr='cd $(git rev-parse --show-cdup)' #cd git root
alias  cd-t='cd ~/Downloads'
alias  cd-df='cd ~/eetancelin/dotfiles' #cd dotfiles
alias  cd-bf='cd ~/eetancelin/Bookmark-Finder-Global/bookmark-finder-webpack'
alias  cd-di-ui='cd ~/eetancelin/data-impact/ui/'
alias  cd-drafts='cd ~/eetancelin/drafts'
alias  cd-tt='cd ~/eetancelin/Technical-test'
alias  cd-ss='cd ~/eetancelin/stylesheets'

## atom
alias  atm-o='atom -a .'


## Yarn and Webpack
alias wds='webpack-dev-server'
alias yi='yarn install'
alias ys='yarn start'

## Git command
alias  gs='echo ""; echo "Git Status"; git status ; echo ""; echo "Stash List" ; git stash list; eslint ./src  '
alias  gst='git stash'
alias  gstl='git stash list'
alias  gstd='git stash drop'
alias  gsta='git stash apply'
alias  gaa='git add .'
alias  gca='git commit .'
alias  gaca='git add . && git commit .'
alias  gd='git diff'
alias  gc.='git checkout .'
alias  gcp-zshrc='git commit zshrc -m 'zshrc improving' && git push '
alias  gcmp='git checkout master && git pull'
alias  grh1= 'git reset --hard HEAD^1'
alias  git-count= 'git count-objects -vH'

##
## Zsh
alias  czsh='atom ~/.zshrc && exec zsh && cd ~/eetancelin/dotfiles && git commit . -m 'alias improving' && git push'
alias  rzsh='exec zsh'
alias  pa="cat ~/eetancelin/dotfiles/zshrc | grep 'alias \|##'"
alias  gcdf="git -C ~/eetancelin/dotfiles commit .   "

##
## Other
alias  bs='cd ~ && nohup google-chrome https://127.0.0.1:57575/ && nohup  butterfly.server.py | exit'
alias  rsl='touch -f ~/Téléchargements/rails.log && rails s > ~/Téléchargements/rails.log & google-chrome /home/doudou/Téléchargements/rails.log'
alias  ct='rm -r -f ~/Downloads/*'
alias p-path='echo $PATH | tr : \\n'


# NVM and RVM

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#Add rvm starting script
source ~/.rvm/scripts/rvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PATH="$PATH : « yarn global bin  »"
export PATH="$PATH :./node_modules/.bin"
