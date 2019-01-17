require_relative 'abstract_page'
require_relative 'zoo_conformation_page'

class Zoo_napishite < Abstract_page

  def initialize(driver)
    super(driver)
  end

  def fill_in_topic(topic)
    @@driver.find_element(:name, 'item1').send_keys topic
    return Zoo_napishite.new(@@driver)
  end

  def clear_mail_field
    @@driver.find_element(:name, 'item2').clear()
    return Zoo_napishite.new(@@driver)
  end

  def mail_input(mail)
    @@driver.find_element(:name, 'item2').send_keys mail
    return Zoo_napishite.new(@@driver)
  end

  def fill_in_text(text)
    @@driver.find_element(:name, 'item3').send_keys text
    return Zoo_napishite.new(@@driver)
  end

  def submit_form
    @@driver.find_element(:css, 'input[value="Odoslať"]').click
    return Zoo_conformation_page.new(@@driver)
  end

end
