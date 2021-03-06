module Repla
  module Jekyll
    # Invalid
    class Config
      attr_reader :delay
      attr_reader :url
      attr_reader :url_string
      attr_reader :file
      attr_reader :refresh_string
      attr_reader :file_refresh
      def initialize(options)
        port = options[:port]&.to_i
        url = options[:url]&.strip
        @delay = options[:delay]&.to_f
        @url = self.class.get_url(url, port)
        @url_string = options[:url_string]
        @url_string&.strip!
        file = options[:file]&.strip
        @file = file.nil? ? nil : File.expand_path(file)
        @refresh_string = options[:refresh_string]
        @refresh_string&.strip!
        file_refresh = if options[:file_refresh].nil?
                         true
                       else
                         options[:file_refresh]
                       end
        @file_refresh = @refresh_string.nil? && file_refresh
      end

      def self.get_url(url = nil, port = nil)
        unless url.nil?
          return url if port.nil?

          return "#{url}:#{port}"
        end

        return "http://localhost:#{port}" unless port.nil?

        nil
      end
    end
  end
end
