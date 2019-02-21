require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

class Home < SitePrism::Page

  set_url 'https://www.google.com'
  set_url_matcher(/www.google.com/)
  element :search_field, 'input[name="q"]'
  element :google_search_btn, 'input[aria-label="Google Search"]'


  def fill_in_field(atr)
    search_field.set atr
  end

  def start_search
    google_search_btn.click
  end


end

class Results_page < SitePrism::Page
  element :search_menu,'id="hdtb-msb-vis"'
  element :search_field, 'input[name="q"]'
end

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.app_host = 'http://google.com'
home_page = Home.new
home_page.load
home_page.fill_in_field('“Page Object” Pattern in Ruby with SitePrism')
home_page.start_search
puts (home_page.displayed?(subpage:'Results_page')) #returns true if is displayed & False in other way
