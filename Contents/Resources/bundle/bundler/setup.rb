require 'rbconfig'
ruby_engine = RUBY_ENGINE
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
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/multipart-post-2.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/faraday-1.0.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/faraday-1.0.1/spec/external_adapters"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-darwin-18/2.4.0-static/ffi-1.12.2"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/ffi-1.12.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/forwardable-extended-2.6.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/i18n-0.9.5/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rb-fsevent-0.10.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rb-inotify-0.10.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/sass-listen-4.0.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/sass-3.7.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-sass-converter-1.5.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/listen-3.2.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-watch-2.2.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/kramdown-1.17.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/liquid-4.0.3/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/mercenary-0.3.6/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/pathutil-0.16.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rouge-3.18.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/safe_yaml-1.0.5/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-3.8.6/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-feed-0.13.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/sawyer-0.8.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/octokit-4.18.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-github-metadata-2.13.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rubyzip-2.3.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-remote-theme-0.4.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-seo-tag-2.6.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-architect-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-cayman-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-dinky-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-hacker-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-leap-day-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-merlot-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-midnight-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-minimal-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-modernist-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-primer-0.5.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-slate-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-tactile-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/jekyll-theme-time-machine-0.1.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/minima-2.5.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-darwin-18/2.4.0-static/openssl-2.1.2"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/openssl-2.1.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/repla-0.10.4/lib"
