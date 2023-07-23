# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Import .env
source ~/.env

# Set zsh theme
ZSH_THEME="agnoster"

# ZSH plugins
plugins=(git zsh-syntax-highlighting)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set environment variables paths
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
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

