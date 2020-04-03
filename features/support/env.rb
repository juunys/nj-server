require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'database_cleaner/active_record'


# @driver = Selenium::WebDriver.for :chrome

DatabaseCleaner.strategy = :truncation

Before do
  DatabaseCleaner.clean
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
    config.default_driver = :selenium #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end

Capybara.app_host = 'http://localhost:3000'


Capybara.javascript_driver = :chrome


# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'
 
# Comment out the next line if you're not using RSpec's matchers (should / should_not) in your steps.
require 'cucumber/rails/rspec'
 
require 'factory_bot_rails'
# require File.expand_path(File.dirname(__FILE__) + '/../../spec/factories.rb')
World(FactoryBot::Syntax::Methods)