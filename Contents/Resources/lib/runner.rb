require_relative 'parent'
require_relative 'parent_logger'
require_relative 'config.rb'

module Repla
  module Jekyll
    # Runner
    class Runner
      def initialize(path)
        options = { refresh_string: '...done' }
        config = Repla::Jekyll::Config.new(options)
        bin_path = File.expand_path(
          File.join(__dir__, '../bin')
        )
        # Some Jekyll themes need to run `git` in there `gemspec`
        system_bin_path = '/usr/bin'
        ENV['PATH'] = ENV['PATH'].split(':').push(
          bin_path
        ).push(
          system_bin_path
        ).join(':')
        ENV['GEM_PATH'] = File.expand_path(
          File.join(__dir__, '../bundle/ruby/2.4.0/')
        )
        # `JEKYLL_NO_BUNDLER_REQUIRE=true` is needed, otherwise `jekyll`
        # requires the Bundler gem to be preset.
        command = 'JEKYLL_NO_BUNDLER_REQUIRE=true jekyll serve --watch'

        window = Repla::Window.new
        window.root_access_directory_path = path
        logger = Repla::Jekyll::Putter.new
        parent_logger = ParentLogger.new(logger, window, config)
        @parent = Parent.new(command, path, parent_logger)
      end

      def run
        @parent.run
      end

      def stop
        @parent.stop
      end
    end
  end
end
