require 'rspec'
require 'selenium-webdriver'
require_relative 'zoo_home_page'
#require_relative 'Zoo_napishite'

describe 'Testing the write us form' do

  app = nil

  before(:each) do
    app = Abstract_page.new(Selenium::WebDriver.for(:firefox))

  end

  after(:each) do
    app.quit
  end

  it 'to add valid data to contact form & submit it' do
    zoo_conformation_page = app
      .navigate_to_app_root
      .navigate_to_contact
      .navigate_to_napishite
        .fill_in_topic('Are you ready for my visit?')
        .clear_mail_field
        .mail_input('salvador dali.com')
        .fill_in_text('Well we will come on 19-th of June 2019. Our bus have 30 people with me. Are you working on that date? Thanks.')
        .submit_form
    expect(zoo_conformation_page.get_page_title).to be == 'Nesprávne vyplnený formulár, ZOO Bratislava'


=begin
    @driver = Selenium::WebDriver.for(:firefox)
    @driver.navigate.to('http://www.zoobratislava.sk/')
    @driver.find_element(:link,'Kontakt').click
    @driver.find_element(:link,'Napíšte nám').click
    @driver.find_element(:name, 'item1').send_keys('Do you have holidays?')
    @driver.find_element(:name, 'item2').clear() # clear the @ symbol in mail field
    @driver.find_element(:name, 'item2').send_keys('borman gmail.com')
    @driver.find_element(:name, 'item3').send_keys('I want to come on 5-th of July 2019. Do you have holidays on that date? Thanks.')
    @driver.find_element(:css, 'input[value="Odoslať"]').click
    expect(@driver.title).to be == 'Nesprávne vyplnený formulár, ZOO Bratislava'
=end
  end
end
