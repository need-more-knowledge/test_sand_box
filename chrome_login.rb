require 'rubygems'
require'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug

browser = Selenium::WebDriver.for(:chrome)

browser.navigate.to("https://www.google.com")
puts "Google main page is opened."

sleep 1 #wait 1 second

browser.find_element(:id,"gb_70").click
puts "Login button is clicked."

browser.find_element(:id, "identifierId").send_keys("evgenii.ushakov@Fuseuniversal.com")
puts "Email was written"

browser.find_element(:class = RveJvd snByac, "Далее").click
puts "Login button is clicked."

browser.find_element(:name, "password")).send_keys("15963")
puts "Password was written."

browser.find_element(:xpath,//*[@id="passwordNext"]/content/span).click
puts "Button NEXT was clicked."
#expect(driver.page_source).to include("Invalid email or password")
