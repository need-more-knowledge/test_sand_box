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

driver.find_element(:xpath,'//*[@id="pass"]').send_keys(15963547)
puts "Password was written"
sleep 5

driver.find_element(:id, "loginbutton").click
puts "Login btn was clicked"
sleep 5

driver.find_element(:link, "Sign up for an account.")
puts "Pop-up for unvalid login was shown"

sleep 5

driver.quit
