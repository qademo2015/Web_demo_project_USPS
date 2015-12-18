module AuxModule

  def take_screenshot_for_scenario(scenario)
    name_of_screenshot_file = 'screenshot_' + scenario.name + Time.now.to_s.downcase.tr!(' ', '_') + '.png'
    @browser.save_screenshot(name_of_screenshot_file)
  end

  def add_env_prefix(url)
    $env_config['prefix'] + url
  end

end
