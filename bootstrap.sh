# Copyright (c) 2023 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

# Initialize mac set true
# export init_flag=true
reset=${init_flag:-'false'}

[[ "$reset" == "true" ]] && {
  # install brew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # install brew bundle
  brew bundle --file=config/Brewfile
  # install zsh
  brew install zsh
  chsh -s zsh
  # install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

# # install krun
# export deploy_path="~/.krun" &&
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/kevin197011/krun/main/deploy.sh)"

# create $HOME/.env
touch "$HOME/.env"

# config zsh
/bin/cp -v config/.zshrc ~/.zshrc

echo "Done!"
