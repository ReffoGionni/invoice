Feature: Update or delete a customer
  As a user I want to update or delete a customer

  Scenario: Valid update to a customer
    Given I am viewing the update page of first customer
    When I fill the "City" field with "Trento"
    And I click "Update Customer"
    Then I expect the confirmation message

  Scenario: Invalid update to a customer
    Given I am viewing the update page of first customer
    When I fill the "Cf" field with ""
    And I click "Update Customer"
    Then I expect to get an error message

  Scenario: Delete a customer
    Given I am viewing the index page of customers
    When I click "Destroy"
    Then I expect the confirmation message
