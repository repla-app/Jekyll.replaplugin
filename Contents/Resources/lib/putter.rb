module Repla
  module Jekyll
    # Logger to standard out
    class Putter
      def info(text)
        puts text
        STDOUT.flush
      end

      def error(text)
        warn text
      end
    end
  end
end
