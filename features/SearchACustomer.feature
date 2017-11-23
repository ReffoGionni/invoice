Feature: Search a customer
  As a user I want to list customers where their surname contains a string

  Scenario: Entering a filter string    
    Given I am viewing the list of customers
    When I fill the filter field    
    And I click "filter"
    Then I see only the list of customers expected