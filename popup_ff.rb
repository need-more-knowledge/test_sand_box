require 'rubygems'
require 'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug
@driver = Selenium::WebDriver.for :firefox
puts "FF browser was opened."

@driver.get 'http://google.com'
sleep(6)

@driver.execute_script("alert('Hi this is test');")
puts"Alert for testing was generated"

sleep (6)
a = @driver.switch_to.alert

a.accept            #dismiss
puts "Alert K btn was accepted"
sleep (6)
@driver.quit()
