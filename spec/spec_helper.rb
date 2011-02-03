if ENV['COVERAGE']
  raise "simplecov only works on 1.9" unless RUBY_PLATFORM >= "1.9"
  require 'simplecov'
  SimpleCov.start {
    add_filter "spec/"
  }
end

$LOAD_PATH.unshift File.expand_path("../lib")
require 'cukeforker'
