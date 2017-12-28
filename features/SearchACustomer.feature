Feature: Search a customer
  As a user I want to list customers where their surname contains a string

  Scenario: Entering a filter string    
    Given I am viewing the customers page index
    When I fill the "filterInput" field with "Ref"
    And I click "filter"
    Then I see only the list of customers containing "Ref"
