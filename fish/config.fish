set SHELL fish
# fish iterm itergration
source ~/.iterm2_shell_integration.(basename $SHELL)

set rbenv_path ~/.rbenv/shims

# set path
set PATH $PATH /usr/local/mysql/bin /usr/local/bin /usr/local/go/bin /Users/gkevin/Library/Python/3.7/bin rbenv_path

set -x GOPATH /Users/gkevin/Desktop/code/collab/server
set -x GOROOT /usr/local/go
set -x GOBIN /Users/gkevin/Desktop/code/collab/server/bin

# set nvm 
set -x NVM_DIR ~/.nvm
function nvm
   bass source $NVM_DIR/nvm.sh --no-use ';' nvm $argv
end
nvm use default --silent

# collab dynamo
function dynamo
	cd ~/Desktop/code
	java -Djava.library.path=dynamodb/DynamoDBLocal_lib/ -jar dynamodb/DynamoDBLocal.jar -port 8001 -dbPath ~/Desktop/code/dynamodb -sharedDb
end

# rbenv init
status --is-interactive; and source (rbenv init -|psub)
set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths

# neo vim 
# dont know if this is required
set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
alias vim='nvim'
