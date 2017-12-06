Feature: invoice for a customer
  As a user I want to issue an invoice to the customer

  Scenario: Entering valid information of a invoice
    Given I am viewing the initial invoice page
    When I have a customer
    And I correctly fill the fields
    And I click "Create Invoice"
    Then I see the invoice

  Scenario: Pay the invoice
    Given I am viewing the invoices page
    When I choose the invoice to be paid
    And I see the invoice
    And I click "Pay"
    Then I expect to see the confirmation message
