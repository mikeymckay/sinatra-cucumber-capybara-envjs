# Generated by cucumber-sinatra. (Thu Jul 15 12:27:57 -0400 2010)

require File.join(File.dirname(__FILE__), '..', '..', 'lib/wakawaka.rb')

require 'capybara'
require 'capybara/cucumber'
require 'capybara/envjs'
require 'spec'

Wakawaka.set(:environment, :test)


World do
  Capybara.app = Wakawaka
  Capybara.javascript_driver = :envjs
#  Capybara.app_host = "http://localhost:4567"
  include Capybara
  include Spec::Expectations
  include Spec::Matchers
end
