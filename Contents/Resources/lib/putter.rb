module Repla
  module Jekyll
    # Logger to standard out
    class Putter
      def info(text)
        if text !~ /^Ignoring\s[^\s]+\sbecause its extensions are not built\./
          puts text
        end
        STDOUT.flush
      end

      def error(text)
        warn text
      end
    end
  end
end
