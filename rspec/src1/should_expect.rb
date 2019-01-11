require 'rspec'
require 'selenium-webdriver'

describe 'To test Should and Expect' do
  before(:all) do
    @driver = Selenium::WebDriver.for(:chrome)
    @driver.navigate.to('https://google.com')
  end

  it 'test method' do
    title = @driver.title
    #title.should be == 'Google'
    expect(title).to be == 'Google'
  end
end


  # numone = 5
  # numtwo = 10
  # total = numone + numtwo
  # puts total
  # total.should == 15
  # expect(total).to be == 15
  # expect(total).to eq(15)
  # expect(total).to equal(15)
