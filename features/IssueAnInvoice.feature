Feature: invoice for a customer
  As a user I want to issue an invoice to the customer

Background:
  When I have a customer

  Scenario: Entering valid information of a invoice
    Given I am viewing the initial invoice page
    When I correctly fill the fields
    And I click "Create Invoice"
    Then I see the invoice

  Scenario: Pay the invoice
    Given I am viewing the invoices page
    When I have invoice
    And I choose the invoice to be paid
    And I click "Update Invoice"
    Then I expect the confirmation message
