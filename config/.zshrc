# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Import .env
# cat ~/.env
# env_var="value"
source ~/.env

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Import antigen plugin manage
# brew install antigen
source /usr/local/share/antigen/antigen.zsh

# ZSH plugins
# plugins=(git zsh-syntax-highlighting rand-quote gitignore cp z command-not-found zsh-autosuggestions colored-man-pages)
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-syntax-highlighting
antigen bundle rand-quote
antigen bundle gitignore
antigen bundle cp
antigen bundle z
antigen bundle command-not-found
antigen bundle zsh-autosuggestions
antigen bundle colored-man-pages

# Set zsh theme
# ZSH_THEME="agnoster"
antigen theme "agnoster"

# Apply antigen
antigen apply

# Set environment variables paths
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="~/.cargo/bin:$PATH"
export PATH="~/perl5/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="~/.cargo/bin:$PATH"
export PATH="~/perl5/bin:$PATH"
export PATH=$PATH:~/.krun/bin
export PATH=$PATH:~/.kssh/bin
export PATH=$PATH:~/.asdf/installs/lua/5.2.0/luarocks/bin
export PATH=$PATH:/opt/puppetlabs/pdk/bin
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export PATH="/usr/local/opt/bzip2/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib -L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include -I/usr/local/opt/llvm/include"
# pdm path
export PATH=${HOME}/.local/bin:$PATH

# Set alias
alias scp='noglob scp'

# Set find regexp
setopt no_nomatch

# Load asdf
source "/usr/local/opt/asdf/libexec/asdf.sh"

# open ai token
export OPENAI_API_KEY=${env_openai_api_key}

# Load Angular CLI autocompletion.
source <(ng completion script)

# Google Cloud SDK
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# For funny things
# quote | cowsay

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
