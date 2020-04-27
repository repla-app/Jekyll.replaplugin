#!/usr/bin/env ruby --disable-gems

require_relative 'bundle/bundler/setup'
require_relative 'lib/runner'
require_relative 'lib/config'

path = if ARGV.empty?
         Dir.pwd
       else
         File.expand_path(File.dirname(ARGF.file))
       end

config = { refresh_string: '...done' }
bin_path = File.expand_path(File.join(File.dirname(__FILE__), 'bin'))
ENV['PATH'] = ENV['PATH'].split(':').unshift(bin_path).join(':')
command = 'bundle exec jekyll serve --watch'

# Repla.clean_path
runner = Repla::Jekyll::Runner.new(command, path, config)
trap 'SIGINT' do
  runner.stop
end

runner.run
