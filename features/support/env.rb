require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

# @driver = Selenium::WebDriver.for :chrome
Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end