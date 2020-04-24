#!/usr/bin/env ruby --disable-gems

require_relative 'bundle/bundler/setup'

# require 'repla'
# require_relative 'lib/runner'

ENV["PATH"] = ENV["PATH"].split(":").push("/Users/robenkleene/Development/Projects/Cocoa/Repla/Packages/Jekyll.replaplugin/Contents/Resources/bin/").join(":")

Dir.chdir('/Users/robenkleene/Development/Projects/Cocoa/Repla/Packages/Jekyll.replaplugin/Contents/Resources/test/data/repla-test-jekyll'){
  # %x[/Users/robenkleene/Development/Projects/Cocoa/Repla/Packages/Jekyll.replaplugin/Contents/Resources/bin/bundle exec jekyll serve --watch]
  Kernel.exec('/Users/robenkleene/Development/Projects/Cocoa/Repla/Packages/Jekyll.replaplugin/Contents/Resources/bin/bundle exec jekyll serve --watch')
}

# Repla.clean_path
# runner = Repla::Jekyll::Runner.new(command, config)
# trap 'SIGINT' do
#   runner.stop
# end

# runner.run
