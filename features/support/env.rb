require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

# @driver = Selenium::WebDriver.for :chrome

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
    config.default_driver = :selenium #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end

Capybara.javascript_driver = :chrome