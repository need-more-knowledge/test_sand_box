require 'rspec'
require 'selenium-webdriver'
require_relative 'zoo_home_page'



class Abstract_page
  @@driver = nil

  def initialize(driver)
    @@driver = driver
  end

  def navigate_to_app_root
    @@driver.navigate.to('http://www.zoobratislava.sk/')
    return Zoo_home_page.new(@@driver)
  end

  def quit
    @@driver.quit
  end

  def get_page_title
    return @@driver.title
  end



end
