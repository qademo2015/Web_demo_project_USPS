class Pages < BasePage

  def usps_page
    @usps_page ||= UspsPage.new @browser
  end

end
