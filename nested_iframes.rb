require'rubygems'
require'selenium-webdriver'

Selenium::WebDriver.logger.level= :debug
$driver = Selenium::WebDriver.for :chrome
puts "Chrome browser was opened."
sleep 5

$driver.get'http://the-internet.herokuapp.com/nested_frames'
puts "Site with iframes was opened"
sleep 3

$driver.switch_to.frame("frame-top")
puts "Driver was switched to parent iframe with name TOP"
sleep 4

$driver.switch_to.frame("frame-middle")
puts "Driver was switched to child frame with name Middle"
sleep 4

$driver.find_element(id:'content')
puts "Elment was found in iframe Middle"

$driver.quit()
