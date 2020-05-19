
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'webdrivers'
require 'report_builder'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 5
end