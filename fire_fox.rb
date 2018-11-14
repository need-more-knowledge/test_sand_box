require 'rubygems'
require 'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug

driver = Selenium::WebDriver.for :firefox
puts "FF browser was opened."

driver.navigate.to "https://www.facebook.com"
puts "Facebook loading done on FF"
