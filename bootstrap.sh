# Copyright (c) 2023 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brew bundle
brew bundle --file=config/Brewfile

# install krun
export deploy_path='~/.krun' && \
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/kevin197011/krun/main/deploy.sh)"

# install zsh
brew install zsh
chsh -s zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# config zsh
/bin/cp config/.zshrc ~/.zshrc


