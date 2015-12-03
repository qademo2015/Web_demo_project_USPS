class BasePage

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.navigate.to build_url
  end

  def build_url
    add_env_prefix($env_config['url'])
  end

  def source
    @browser.page_source
  end

end