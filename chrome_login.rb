require 'rubygems'
require'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug

browser = Selenium::WebDriver.for(:chrome)

browser.navigate.to("https://www.google.com")
puts "Google main page is opened."

sleep 3 #wait 3 sec.

browser.find_element(:id,"gb_70").click
puts "Login button is clicked."
sleep 1 #wait 1 sec.

browser.find_element(:id, "identifierId").send_keys("evgenii.ushakov")
puts "Email was written."
sleep 1 #wait 1 sec.

browser.find_element(:id, "identifierNext").click
puts"Next button is clicked."

sleep 2 #wait 2 sec.

browser.find_element(:css,"input[name=\"password\"]").send_keys("159632")
puts "Password was written."
sleep 2 #wait 2 sec.

browser.find_element(:css, 'span.RveJvd.snByac').click
puts "Button NEXT was clicked."

sleep 2 #wait 2 sec.

browser.find_element(:css,"#password > div.LXRPh > div.dEOOab.RxsGPe")
puts "Not valid login was used."
