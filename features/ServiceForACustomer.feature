Feature: Service for a customer
  As a user I want to do a customer service

  Background: Entering on new service page from customer page index
    When I have a customer
    Given I am viewing the customers page index
    And I click Show on first entry
    And I click "New service"

  Scenario: Complete data
    When I fill the "Rate" field with "12"
    And I fill the "Duration" field with "15"
    And I click "Create Service"
    Then I expect the "success" message

  Scenario: Incomplete data
    When I click "Create Service"
    Then I expect the "error" message

  Scenario: Delete the service
    When I have a service
    Given I am viewing the service index page
    And I click "Destroy"
    Then I expect the "success" message

  Scenario: Update the service with success
    When I have a service
    Given I am viewing the service index page
    And I click "Edit"
    When I fill the "Rate" field with "21"
    And I click "Update Service"
    Then I expect the "success" message

  Scenario: Update the service with failure
    When I have a service
    Given I am viewing the service index page
    And I click "Edit"
    When I fill the "Cf" field with ""
    And I click "Update Service"
    Then I expect the "error" message
