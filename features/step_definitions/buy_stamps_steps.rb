Given /^I navigate to Buy stamps page$/ do
  usps.buy_stamps_page.visit
end

Then /^I press on (\d*)(?:st|nd|rd|th)? product on stamps screen$/ do |index|
  usps.buy_stamps_page.product_by_index(index).click
end

And /^I press 'Add to cart' button$/ do
  usps.buy_stamps_page.add_to_cart_button.click
end

Then /^I verify shopping cart logo has (\d+) item$/ do |number|
  expect(usps.buy_stamps_page.product_in_cart.text).to be == number
end
