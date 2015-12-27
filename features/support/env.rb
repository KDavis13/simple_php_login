require 'rspec/expectations'
require 'capybara'
require 'capybara/mechanize'
require 'capybara/cucumber'
require 'test/unit/assertions'
require 'mechanize'

Capybara.configure do |config|
    config.app = "fake"
    config.default_driver = :mechanize
    config.app_host = "http://localhost:63342"
end