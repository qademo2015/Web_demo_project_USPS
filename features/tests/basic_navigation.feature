Feature: Basic navigation and functionality of USPS site

  @navigation @smoke @uat @regression
  Scenario: Verify basic navigation on USPS site
    Given I navigate to main USPS page
    Then The following sub-items should be present:
      | My USPS             |
      | Find USPS Locations |
      | Buy Stamps          |
    When I click "Find USPS Locations" sub-item
#    Then I should see something

