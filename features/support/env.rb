require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'etsy_capybara_cucumber'

require 'test/unit/assertions'

World(Test::Unit::Assertions)

require 'capybara/cucumber'
require 'capybara/session'

Capybara.current_driver = :selenium
Capybara.default_driver = :selenium

#Capybara.default_selector = :xpath