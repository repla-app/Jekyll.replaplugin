#!/usr/bin/env ruby

require 'minitest/autorun'

require_relative 'lib/test_setup'
require 'repla'
require Repla::Test::LOG_HELPER_FILE

# Test CLI
class TestCLI < Minitest::Test
  def setup
    puts 'Setup'
  end

  def teardown
    puts 'Teardown'
  end

  def test_cli; end
end
