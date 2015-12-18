class FindLocationsPage < Pages

  def page_url
    add_env_prefix($env_config['find_locations_page_url'])
  end

  def page_header
    @browser.find_element(:id, 'polo-index-title').find_element(:tag_name, 'h1')
  end

  def zip_code_field
    @browser.find_element(:id, 'tCityStateZip')
  end

  def search_button
    @browser.find_element(:id, 'bSearch')
  end

  def search_results
    @browser.find_element(:css, 'tbody.resultRows').find_elements(:css, 'tr.result')
  end

  # def find_by_tag_and_text
  #   @browser.find_element(:xpath, "//span[text()='20 miles']")
  # end
  #
  # def find_by_link_text
  #   @browser.find_element(:link_text, "Browse our FAQs ›")
  # end
  #
  # def wait_for_faq
  #   wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  #   # wait.until{@browser.find_element(:link_text, "Browse our FAQs ›")}
  #   wait.until{find_by_link_text}
  # end

end
