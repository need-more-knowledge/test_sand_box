require 'rspec'
require 'selenium-webdriver'
describe 'Go to W3 schools and click popup' do
  before(:all) do
    Selenium::WebDriver.logger.level = :debug
    @driver = Selenium::WebDriver.for :chrome
    puts "Chrome browser was opened."
    sleep 1
    @driver.navigate.to 'http://demo.guru99.com/test/delete_customer.php '
    puts 'Demo website was opened'
    sleep 5
  end

  it 'delete a customer by id' do
    @driver.find_element(:name, "cusid").send_keys(1523)
    puts ' User with ID 1523 was picked for deletion'
    sleep 1
    @driver.find_element(:css,'input[type="submit"]').click
    puts'Submit btn was clicked.'
    sleep 3
    popBox = @driver.switch_to.alert
    puts popBox.text

    sleep 3
    popBox.accept
    sleep 4

    popBox = @driver.switch_to.alert
    puts popBox.text
    popBox.accept
    sleep 4



  end


  after(:all) do
    @driver.quit
  end
end
