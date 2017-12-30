Feature: Managing issues
  As a user I want to see the issues entered and manage them

  Scenario: New issue
    Given I am viewing the issue index page
    And I click "New Issue"
    And I correctly fill the Cf and Description
    And I click "Create Issue"
    Then I expect the "success" message

  Scenario: Delete the issue
    When I have an issue
    Given I am viewing the issue index page
    And I click "Destroy"
    Then I expect the "success" message

  Scenario: Update the service with success
    When I have an issue
    Given I am viewing the issue index page
    And I click "Edit"
    When I fill the "Description" field with "Aiuto!!!"
    And I click "Update Issue"
    Then I expect the "success" message

  Scenario: Update the issue with failure
    When I have an issue
    Given I am viewing the issue index page
    And I click "Edit"
    When I fill the "Cf" field with ""
    And I click "Update Issue"
    Then I expect the "error" message
