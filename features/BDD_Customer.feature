Feature: Inserting a new customer

Scenario: Entering information of a customer
Given I am viewing the edit page of a customer
When I fill the fields
And I click "Submit"
Then I expect the confirmation message

