require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

class Home < SitePrism::Page

  set_url 'https://www.facebook.com/'
  set_url_matcher('https://www.facebook.com/')
  element :email_feild, 'input[id="email"]'
  element :password, 'input[id="pass"]'
  element :login_btn, '[id="loginbutton"]'


  def fill_in_email(atr)
    email_feild.set atr
  end

  def fill_in_password(atr)
    password.set atr
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
@home_page.fill_in_email('eushakov@gmail.com')
@home_page.fill_in_password(45698755214145)
@home_page.click_login_btn
puts @home_page.title
