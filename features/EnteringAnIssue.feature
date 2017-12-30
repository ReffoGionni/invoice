Feature: A customer insert a new issue
  As a customer I want to enter a problem description so that helpdesk can give me assistance

  Scenario: Entering a valid issue
    Given I am viewing the new issue page
    When I have a customer
    And I correctly fill the Cf and Description
    And I click "Create Issue"
    Then I expect the "success" message

  Scenario: Entering an invalid issue
    Given I am viewing the new issue page
    When I have a customer
    And I left blank the  Cf and Description
    And I click "Create Issue"
    Then I expect the "error" message
