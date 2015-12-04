Given(/^I navigate to main USPS page$/) do
  usps.usps_page.visit
end

Then(/^The following sub-items should be present:$/) do |table|
  table.raw.each do |arr|
    arr.each do |item|
      case item
        when 'My USPS'
          usps.usps_page.my_usps.displayed?
          # usps.usps_page.my_usps.is_present?
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
  # case item
  #   when 'My USPS'
  #     usps.usps_page.my_usps.click
  #   when 'Find USPS Locations'
  #     usps.usps_page.find_locations.click
  #   when 'Buy Stamps'
  #     usps.usps_page.buy_stamps.click
  #   else
  #     raise "The sub-item #{item} is undefined"
  # end
end