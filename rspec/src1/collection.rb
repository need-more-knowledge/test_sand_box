require 'rspec'
require 'selenium-webdriver'

describe 'My zoo site' do
  before(:all) do
    @driver = Selenium::WebDriver.for (:firefox)
    @driver.navigate.to 'https://www.zoobratislava.sk/'
  end

  it 'do something' do
    # grab all the links on the page
    tagList = @driver.find_elements(:tag_name, 'a') #this will find all elements we need

    #look through all the links using loops (FOR or EACH DO |..|)
    for i in tagList
      puts "value of i is #{i.text}" # use double quotes "" for that loop working
    end

    tagList.each do |item|
      puts "for each value for item is" + item.text

      if item.text == 'Úvod'
        next # it just jumps to the top of the list & will start from the next tag
      end

      if item.text == 'O ZOO'
        puts "Found link about the ZOO"
      end

      if item.text == 'Kontakt'
        puts "Found a link Kontakt"
        break
      end
    end

    # as we looking, we want to do smth as we found the link we need

  end

  after(:all) do
    @driver.quit
  end
end
