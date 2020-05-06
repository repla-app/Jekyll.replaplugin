require 'rbconfig'
# ruby 1.8.7 doesn't define RUBY_ENGINE
ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/public_suffix-4.0.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/addressable-2.7.0/lib"
$:.unshift "#{path}/"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/colorator-1.1.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/concurrent-ruby-1.1.6/lib/concurrent-ruby"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-darwin-18/2.4.0-static/eventmachine-1.2.7"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/eventmachine-1.2.7/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-darwin-18/2.4.0-static/http_parser.rb-0.6.0"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/http_parser.rb-0.6.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/em-websocket-0.5.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-darwin-18/2.4.0-static/ffi-1.12.2"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/ffi-1.12.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/forwardable-extended-2.6.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/i18n-1.8.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-darwin-18/2.4.0-static/sassc-2.3.0"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/sassc-2.3.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-sass-converter-2.1.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rb-fsevent-0.10.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rb-inotify-0.10.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/listen-3.2.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-watch-2.2.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rexml-3.2.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/kramdown-2.2.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/kramdown-parser-gfm-1.1.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/liquid-4.0.3/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/mercenary-0.3.6/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/pathutil-0.16.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rouge-3.18.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/safe_yaml-1.0.5/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/unicode-display_width-1.7.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/terminal-table-1.8.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-4.0.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-feed-0.13.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-seo-tag-2.6.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/minima-2.5.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/repla-0.10.4/lib"
