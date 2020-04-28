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
    @runner.run

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
  end

  def test_runner
    result = nil
    Repla::Test.block_until do
      result = @window.do_javascript(javascript)
      result == Repla::Test::INDEX_HTML_TITLE
    end
    assert_equal(Repla::Test::INDEX_HTML_TITLE, result)
  end
end
