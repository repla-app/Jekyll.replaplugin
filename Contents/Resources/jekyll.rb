#!/usr/bin/env ruby --disable-gems

require_relative 'bundle/bundler/setup'
require_relative 'lib/runner'

path = if ARGV.empty?
         Dir.pwd
       else
         File.expand_path(File.dirname(ARGF.file))
       end

# Repla.clean_path
runner = Repla::Jekyll::Runner.new(path)
trap 'SIGINT' do
  runner.stop
end

runner.run
