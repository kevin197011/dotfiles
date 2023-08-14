# frozen_string_literal: true

# Copyright (c) 2023 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT
require 'rake'
require 'time'

current_path = __dir__

task default: %w[backup push]

task :backup do
  sh "brew bundle dump --file=#{current_path}/config/Brewfile --force"
  sh "/bin/cp ~/.zshrc #{current_path}/config/.zshrc"
  sh 'rubocop -A >/dev/null 2>&1'
end

task :push do
  sh 'git add .'
  sh "git commit -m 'Update #{Time.now}.'"
  sh 'git push origin main'
end

task :run do
  sh 'bash ./bootstrap.sh'
  Rake::Task[:git_push].invoke
end
