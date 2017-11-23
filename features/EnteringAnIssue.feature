Feature: A customer insert a new issue
  As a customer I want to enter a problem description so that helpdesk can give me assistance

  Scenario: Entering a valid issue
    Given I am viewing the new issue page
    When I fill the description
    And I click "Submit"
    Then I expect the confirmation message

  Scenario: Entering an invalid issue
    Given I am viewing the new issue page
    When I left blank the description
    And I click "Submit"
    Then I expect to get an error message