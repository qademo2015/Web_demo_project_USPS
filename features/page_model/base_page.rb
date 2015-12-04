class BasePage

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.navigate.to build_url
  end

  def build_url
    self.page_url
  end

  def source
    @browser.page_source
  end

end