Feature: invoice for a customer
  As a user I want to issue an invoice to the customer

Background:
  When I have a customer

  Scenario: Entering valid information of a invoice
    Given I am viewing the index invoice page
    When I click "New Invoice"
    When I correctly fill the fields
    And I click "Create Invoice"
    Then I see the invoice

  Scenario: Entering incomplete information of a invoice
    Given I am viewing the index invoice page
    When I click "New Invoice"
    And I click "Create Invoice"
    Then I expect the "error" message

  Scenario: Pay the invoice
    Given I am viewing the invoices page
    When I have invoice
    And I choose the invoice to be paid
    And I click "Update Invoice"
    Then I expect the "success" message

  Scenario: Delete the invoice
    When I have invoice
    Given I am viewing the invoices page
    And I click "Destroy"
    Then I expect the "success" message

  Scenario: Update the invoice with success
    When I have invoice
    Given I am viewing the invoices page
    And I click "Edit"
    When I fill the "Invoicenumber" field with "9876"
    And I click "Update Invoice"
    Then I expect the "success" message

  Scenario: Update the invoice with failure
    When I have invoice
    Given I am viewing the invoices page
    And I click "Edit"
    When I fill the "Cf" field with ""
    And I click "Update Invoice"
    Then I expect the "error" message
