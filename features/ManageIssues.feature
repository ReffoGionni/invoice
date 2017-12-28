Feature: Managing issues
  As a user I want to see the issues entered and manage them

  Scenario: New issue
    Given I am viewing the issue index page
    And I click "New Issue"
    And I correctly fill the Cf and Description
    And I click "Create Issue"
    Then I expect the confirmation message
