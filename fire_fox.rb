require 'rubygems'
require 'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug

driver = Selenium::WebDriver.for :firefox
puts "FF browser was opened."


driver.navigate.to "https://www.facebook.com"
puts "Facebook loading done on FF"

#browser.find_element(css: "input[name ='email']").send_keys("Chack@norris.com")
driver.find_element(:css, 'input.inputtext').send_keys("Chack@norris.com")
puts "Email was written"

driver.find_element(:xpath,'//*[@id="pass"]').send_keys(5262659)
puts "Pssword was written"


driver.quit
