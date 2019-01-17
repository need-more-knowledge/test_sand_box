require_relative 'abstract_page'
require_relative 'zoo_contact'

class Zoo_home_page < Abstract_page

  def initialize(driver)
    super(driver)
  end

  def navigate_to_contact
    @@driver.find_element(:link,'Kontakt').click
    return Zoo_contact.new(@@driver)
  end
end
