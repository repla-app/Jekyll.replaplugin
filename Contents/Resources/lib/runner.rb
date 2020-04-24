require_relative 'parent'
require_relative 'parent_logger'

module Repla
  module Jekyll
    # Runner
    class Runner
      def initialize(command, path, config = nil)
        window = Repla::Window.new
        window.root_access_directory_path = path
        parent_logger = ParentLogger.new(nil, view, config)
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
