Given(/^I navigate to main USPS page$/) do
  usps.usps_page.visit
end

Then(/^The following sub-items should be present:$/) do |table|
  table.raw.each do |arr|
    arr.each do |item|
      case item
        when 'My USPS'
          usps.usps_page.my_usps.displayed?
        when 'Find USPS Locations'
          usps.usps_page.find_locations.displayed?
        when 'Buy Stamps'
          usps.usps_page.buy_stamps.displayed?
        else
          raise "The sub-item #{item} is undefined"
      end
    end
  end
end

When(/^I click "([^"]*)" sub-item$/) do |item|
  usps.usps_page.click_sub_item_by_name(item)
end

Then(/^I type "([^"]*)" to zip code field$/) do |zip_code|
  usps.find_locations_page.zip_code_field.send_keys zip_code
end

And(/^I press on Search button on Find locations page$/) do
  sleep 2
  usps.find_locations_page.search_button.click
end

Then(/^I should see Find locations search result$/) do
  sleep 2
  expect(usps.find_locations_page.search_results.size).to be > 0
end
