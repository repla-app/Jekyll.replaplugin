#!/usr/bin/env ruby --disable-gems

require_relative 'bundle/bundler/setup'

# require 'repla'
# require_relative 'lib/runner'

bin_path = File.expand_path(File.join(File.dirname(__FILE__), 'bin'))

# TODO: Replace with parameter
dir = '/Users/robenkleene/Development/Projects/Cocoa/Repla/Packages/Jekyll.replaplugin/Contents/Resources/test/data/repla-test-jekyll'

ENV['PATH'] = ENV['PATH'].split(':').unshift(bin_path).join(':')
Dir.chdir(dir) do
  Kernel.exec('bundle exec jekyll serve --watch')
  # Kernel.exec('env')
  # Kernel.exec('which jekyll')
  # Kernel.exec('/Users/robenkleene/Development/Projects/Cocoa/Repla/Packages/Jekyll.replaplugin/Contents/Resources/bin/bundle exec jekyll serve --watch')
end

# Repla.clean_path
# runner = Repla::Jekyll::Runner.new(command, config)
# trap 'SIGINT' do
#   runner.stop
# end

# runner.run
