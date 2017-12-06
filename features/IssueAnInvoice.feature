Feature: invoice for a customer
  As a user I want to issue an invoice to the customer

  Scenario: Entering valid information of a invoice
    Given I am viewing the initial invoice page
    When I have a customer
    And I correctly fill the fields
    And I click "Create Invoice"
    Then I see the invoice

  Scenario: Issue the invoice
    Given I am viewing the filled invoice page
    When I click "Create Invoice"
    Then I expect to see the confirmation message
