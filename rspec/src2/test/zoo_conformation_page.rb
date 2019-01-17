require_relative 'abstract_page'

class Zoo_conformation_page < Abstract_page
  def initialize(driver)
    super(driver)
  end

  def get_page_title
    return @@driver.title
  end

end
