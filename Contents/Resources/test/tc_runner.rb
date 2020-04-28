#!/usr/bin/env ruby

require 'minitest/autorun'

require_relative 'lib/test_setup'
require 'repla'
require Repla::Test::LOG_HELPER_FILE
require_relative '../lib/runner.rb'

# Test CLI
class TestCLI < Minitest::Test
  def setup
    @runner = Repla::Jekyll::Runner.new(TEST_BLOG_DIR)
    Thread.new do
      @runner.run
    end

    window_id = nil
    Repla::Test.block_until do
      window_id = Repla::Test::Helper.window_id
      !window_id.nil?
    end
    refute_nil(window_id)
    @window = Repla::Window.new(window_id)
  end

  def teardown
    @runner.stop
    @window.close
  end

  def test_runner
    javascript = File.read(Repla::Test::TITLE_JAVASCRIPT_FILE)
    result = nil
    Repla::Test.block_until do
      result = @window.do_javascript(javascript)
      result.start_with?(TEST_TITLE_PREFIX)
    end
    assert(result.start_with?(TEST_TITLE_PREFIX))
  end
end
