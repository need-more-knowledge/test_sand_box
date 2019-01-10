
require 'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug
@driver = Selenium::WebDriver.for :firefox
puts "FF browser was opened."

@driver.get('http://the-internet.herokuapp.com/windows') #driver.navigate().back();driver.navigate().forward();driver.navigate().refresh()
puts "site for testing was opened"
sleep (4)

main_window = @driver.window_handle

@driver.find_element(:link, 'Click Here').click
puts "Link for new window opening was clicked."

windows = @driver.window_handles
  windows.each do |window|
    if main_window != window
      @new_window = window
    end
  end

@driver.switch_to.window(@new_window)

puts @driver.find_element(:class,"example").text
sleep 5
puts "Element on a new window was found"

sleep (3)
@driver.close()
sleep (3)

@driver.switch_to.window(main_window)
puts "Switched to the main window"
sleep (5)

@driver.find_element(:link,"Elemental Selenium")
puts"Link was found on a main page"
sleep (4)

@driver.quit()
