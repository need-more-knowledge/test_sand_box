require 'selenium-webdriver'

options = Selenium::WebDriver::Firefox::Options.new(args: ['-headless'])

driver = Selenium::WebDriver.for(:firefox, options: options)

driver.get('http://stackoverflow.com/')

puts driver.title

if driver.title == 'Stack Overflow - Where Developers Learn, Share, & Build Careers' #send message to your bot
  driver.get('https://api.telegram.org/botBOT_TOKEN/sendMessage?chat_id=CHAT_ID&text=Hello+World')
else
  puts 'Non-corresponding page title is shown'
end
driver.quit
