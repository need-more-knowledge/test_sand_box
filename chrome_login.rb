require 'rubygems'
require'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug

browser = Selenium::WebDriver.for(:chrome)

browser.navigate.to("https://www.google.com")
puts "Google main page is opened."

sleep 1 #wait 1 second

browser.click(:id,"gb_70")
puts "Login button is clicked."
