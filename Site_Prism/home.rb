require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

class Home < SitePrism::Page

  set_url 'https://www.google.com'
  set_url_matcher('https://www.google.com')
  element :search_field, 'input[name="q"]'
  element :google_search_btn, 'input[name="btnK"]'
  load_validation { [has_search_field_element?, 'did not have search element!' ]}

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
puts @home_page.loaded

puts @home_page.title
@home_page.fill_in_field('“Page Object” Pattern in Ruby with SitePrism')
@home_page.start_search
