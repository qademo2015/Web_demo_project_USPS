# 'Before' and 'After' closures
Before do |scenario|
  puts "Start scenario - #{scenario.name}"
  create_instance
  @browser.manage.delete_all_cookies
end

After do |scenario|
  @browser.manage.delete_all_cookies
  if scenario.failed?
    take_screenshot_for_scenario(scenario)
  end
  @browser.close
  @browser.quit
end