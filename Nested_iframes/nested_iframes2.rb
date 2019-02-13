require'rubygems'
require'selenium-webdriver'

Selenium::WebDriver.logger.level= :debug
$driver = Selenium::WebDriver.for :chrome
puts "Chrome browser was opened."


$driver.get'http://the-internet.herokuapp.com/nested_frames'
puts "Site with iframes was opened"

$driver.switch_to.frame("frame-bottom")
puts "Driver was switched to iframe with name Frame-Bottom"

$driver.switch_to.default_content()
puts "Now we are outside of all iframes"

$driver.switch_to.frame("frame-top")
puts "Driver found element named Frame-top"

$driver.switch_to.frame("frame-right")
puts "Driver switched to parent frame of Frame Top"


$driver.quit()
