Feature: Service for a customer
  As a user I want to do a customer service

  Background: Entering on new service page from customer page index
    Given I am viewing the customers page index
    And I click Show on first entry
    And I click "New service"

  Scenario: Complete data
    When I fill the "Rate" field with "12"
    And I fill the "Duration" field with "15"
    And I click "Create Service"
    Then I expect to see a confirmation message

  Scenario: Incomplete data
    When I click "Create Service"
    Then I expect to see an error message
