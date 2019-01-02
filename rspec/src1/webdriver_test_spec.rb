require 'rspec'
require 'selenium-webdriver'

describe 'my zoo site' do
  before (:each) do

    #create a webdriver driver
    Selenium::WebDriver.logger.level = :debug
    @driver = Selenium::WebDriver.for(:chrome)
    #navigate to some zoo website
    @driver.navigate.to 'https://www.zoobratislava.sk/'

  end

  it 'should open a browser and click on contact' do

    #click on contact link
    @driver.find_element(:link, "Kontakt").click
    #print out the page title
    puts @driver.title
    sleep 6
  end

  it 'should open a browser and click on About Zoo' do

    #click on about zoo link
    @driver.find_element(:link, "O ZOO").click
    #print out the page title
    puts @driver.title
    sleep 6
  end

  after(:each) do
  #close the browser
    @driver.quit()
  end
end
