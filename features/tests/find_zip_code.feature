@zip_code_tests

Feature: Zip code finder

  @zip_codes @smoke @uat @regression
  Scenario: Happy path for looking up zip code
    Given I navigate to USPS Look up Zip Code page
    Then I type "1600 Pennsylvania Avenue Northwest" to street address field
    Then I type "Washington" to city field
    Then I select "DC - District of Columbia" from states drop down list
    And I click Find Zip code button
    Then I see results on Look up a zip code page

  @zip_codes @zip_code_search @smoke @uat @regression
  Scenario Outline: search for zip code in different locations
    Given I navigate to USPS Look up Zip Code page
    Then I type "<address>" to street address field
    Then I type "<city>" to city field
    Then I select "<state>" from states drop down list
    And I click Find Zip code button
    Then I see results on Look up a zip code page

    Examples: addresses
      |address                            |city         |state                    |
      |1600 Pennsylvania Avenue Northwest |Washington   |DC - District of Columbia|
      | 1801 23rd Ave                     |San Francisco|CA - California          |