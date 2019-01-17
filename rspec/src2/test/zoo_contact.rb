require_relative 'abstract_page'
require_relative 'zoo_napishite'

class Zoo_contact < Abstract_page

  def initialize(driver)
    super(driver)
  end

  def navigate_to_napishite
    @@driver.find_element(:link,'Napíšte nám').click
    return Zoo_napishite.new(@@driver)
  end

end
