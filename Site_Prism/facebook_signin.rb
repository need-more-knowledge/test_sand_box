require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

class Home < SitePrism::Page

  set_url 'https://www.facebook.com/'
  set_url_matcher('https://www.facebook.com/')
  element :first_name_field, 'input[aria-label="First name"]'
  element :last_name_field, 'input[aria-label="Last name"]'
  element :email_phone_field, 'input[aria-label="Mobile number or email"]'
  element :password_field, 'input[aria-label="New password"]'
  element :month_field, 'select[id="month"]'
  element :login_btn, '[id="loginbutton"]'

  def fill_in_first_name_field(atr)
    first_name_field.set atr
  end

  def fill_in_last_name_field(atr)
    last_name_field.set atr
  end

  def fill_in_email_phone(atr)
    email_phone_field.set atr
  end

  def fill_in_password(atr)
    password_field.set atr
  end

  def fill_in_month
    month_field.click
  end

  def click_login_btn
    login_btn.click
  end

end

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.app_host = 'http://www.facebook.com'
@home_page = Home.new
@home_page.load
puts @home_page.title
@home_page.fill_in_first_name_field('Jack')
puts 'First name was entered'
@home_page.fill_in_last_name_field('McKen')
puts 'Last name was entered'
@home_page.fill_in_email_phone('+4985272680425')
puts 'Email/Phone field was entered'
@home_page.fill_in_password ('16416641Aa4')
puts 'Password was entered'
@home_page.month_field
puts 'Month field was clicked'

puts @home_page.title
