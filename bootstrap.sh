# Copyright (c) 2023 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --file=config/Brewfile

export deploy_path='~/.krun' && \
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/kevin197011/krun/main/deploy.sh)"
