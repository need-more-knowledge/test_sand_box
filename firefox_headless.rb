require 'selenium-webdriver'

options = Selenium::WebDriver::Firefox::Options.new(args: ['-headless'])

driver = Selenium::WebDriver.for(:firefox, options: options)

driver.get('http://stackoverflow.com/')

puts driver.title

driver.quit
