Feature: Scenarios for buy stamps

  @stamps @smoke @uat @regression
  Scenario: User able to add stamps to cart
    Given I navigate to Buy stamps page
    Then I press on 1st product on stamps screen
    And I press 'Add to cart' button
    Then I verify shopping cart logo has 1 item
