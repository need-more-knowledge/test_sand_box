require 'rubygems'
require 'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug
$driver = Selenium::WebDriver.for :chrome
puts "Chrome browser was opened."


$driver.get'https://www.facebook.com/'
puts "Facebook was opened"

$driver.action.move_to($driver.find_element(:id,"birthday-help")).perform
puts "Popup was shown by hoover over the element"


$driver.find_element(:id,"u_0_6")

puts "ELEMENT ON POPUP WAS FOUND"



$driver.quit()
