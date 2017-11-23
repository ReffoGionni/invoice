Feature: invoice for a customer
  As a user I want to issue an invoice to the customer

  Scenario: Entering valid information of a invoice
    Given I am viewing the initial invoice page
    When I correctly fill the CF field    
    And I click "retrive data"
    Then I see the invoice

  Scenario: Issue the invoice
    Given I am viewing the filled invoice page
    When I click "issue invoice"
    Then I expect to see the confirmation message
