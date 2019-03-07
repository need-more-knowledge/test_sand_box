require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

class Home < SitePrism::Page

  set_url 'https://www.google.com'
  set_url_matcher(/www.google.comm/)
  element :search_field, 'input[name="q"]'
  element :google_search_btn, 'input[aria-label="Google Search"]'


  def fill_in_field(atr)
    search_field.set atr
  end

  def start_search
    google_search_btn.click
  end

end


Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.app_host = 'http://google.com'
@home_page = Home.new
@home_page.load
puts @home_page.title
  #expect(@home_page.current_url).to include('google.com')
@home_page.fill_in_field('“Page Object” Pattern in Ruby with SitePrism')
