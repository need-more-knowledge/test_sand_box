require 'rubygems'
require'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug

browser = Selenium::WebDriver.for(:chrome)

browser.navigate.to("https://www.google.com")
puts "Google main page is opened."

browser.find_element(:name, "q").send_keys("Hello")
puts "Word Hello is written in the search field."

browser.find_element(:name,"btnK").click
puts "the search btn was clicked"

browser.find_element(:id, "gsr")
puts "Make sure we are on the result of search page"
