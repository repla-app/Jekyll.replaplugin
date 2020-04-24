#!/usr/bin/env ruby --disable-gems

require 'optparse'

require_relative 'bundle/bundler/setup'
# require 'repla'

require_relative 'lib/runner'

# Repla.clean_path
runner = Repla::Jekyll::Runner.new(command, config)
trap 'SIGINT' do
  runner.stop
end

runner.run
