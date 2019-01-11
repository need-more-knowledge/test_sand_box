
require 'selenium-webdriver'
Selenium::WebDriver.logger.level = :debug
@driver = Selenium::WebDriver.for :firefox
puts "FF browser was opened."

@driver.get('http://the-internet.herokuapp.com/windows') #driver.navigate().back();driver.navigate().forward();driver.navigate().refresh()
puts "site for testing was opened"


main_window = @driver.window_handle

@driver.find_element(:link, 'Click Here').click
puts "Link for new window opening was clicked."
sleep 5 #wait for new window will open
=begin
def wait_until_true(timeout = 2)
   start = Time.now
   max = Time.now + timeout
   loop do
      res = yield
      break if res || Time.current > max
      sleep 0.02
   end
   raise "Timeout waiting for block to return true" unless res
   res
end
(edited)

добавляешь такой хелпер метод
и используешь его так
wait_until_true(5) { @driver.window_handles.size > 1  }
=end

windows = @driver.window_handles
  windows.each do |window|
    if main_window != window
      @new_window = window
    end
  end
puts @new_window.class
@driver.switch_to.window(@new_window)

puts @driver.find_element(:class,"example").text

puts "Element on a new window was found"

@driver.close()


@driver.switch_to.window(main_window)
puts "Switched to the main window"


@driver.find_element(:link,"Elemental Selenium")
puts"Link was found on a main page"


@driver.quit()
