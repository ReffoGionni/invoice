Feature: Inserting a new customer
  As a user I want to insert a new customer

  Scenario: Entering valid information of a customer
    Given I am viewing the edit page of a customer
    When I correctly fill the needed fields
    And I click "Create Customer"
    Then I expect the confirmation message

  Scenario: Entering incomplete information of a customer
    Given I am viewing the edit page of a customer
    When I fill only the some fields
    And I left blank the "surname" field
    And I click "Create Customer"
    Then I expect to get an error message
