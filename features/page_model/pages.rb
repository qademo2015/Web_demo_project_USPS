class Pages < BasePage

  def usps_page
    @usps_page ||= UspsPage.new @browser
  end

  def find_locations_page
    @find_locations_page ||= FindLocationsPage.new @browser
  end

  def buy_stamps_page
    @buy_stamps_page ||= BuyStampsPage.new @browser
  end

  def find_zip_code_page
    @find_zip_code_page ||= FindZipCodePage.new @browser
  end

  def find_element_by_text(text)
    @browser.find_element(text: text)
  end

  def is_present?
    puts 'Start check if element is present on page'
    expect(self.displayed?).to be true
  end

end
