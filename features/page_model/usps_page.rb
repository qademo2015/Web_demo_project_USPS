class UspsPage < Pages

  def page_url
    add_env_prefix($env_config['usps_main_page_url'])
  end

  def my_usps
    @browser.find_element(:xpath, $env_config['my_usps'])
  end

  def find_locations
    @browser.find_element(:xpath, $env_config['find_locations'])
  end

  def buy_stamps
    @browser.find_element(:xpath, $env_config['buy_stamps'])
  end

  def click_sub_item_by_name(name)
    case name
      when 'My USPS'
        self.my_usps.click
      when 'Find USPS Locations'
        self.find_locations.click
      when 'Buy Stamps'
        self.buy_stamps.click
      else
        raise "The sub-item #{name} is undefined"
    end
  end

end