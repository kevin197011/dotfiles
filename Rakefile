# frozen_string_literal: true

# Copyright (c) 2023 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

current_path = __dir__

task default: %w[backup git_push]

task :backup do
  sh "brew bundle dump --file=#{current_path}/config/Brewfile --force"
  sh 'rubocop -A >/dev/null 2>&1'
end

task :git_push do
  sh 'git add .'
  sh 'git commit -m "Update."'
  sh 'git push origin main'
end

task :bootstrap do
  sh 'bash ./bootstrap.sh'
end
