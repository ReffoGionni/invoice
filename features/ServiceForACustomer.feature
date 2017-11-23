Feature: Service for a customer
  As a user I want to do a customer service

  Scenario: Start the timer
    Given I am viewing the service page
    When I correctly fill the CF and rate fields
    And I click "Start timer"
    Then I expect the stopwatch will start

  Scenario: Stop the time
    Given I am viewing the service page with the stopwatch that works
    When I click "Stop timer"
    Then I expect the stopwatch will stop

  Scenario: Incomplete data
    Given I am viewing the service page with blank fields
    When I click "Submit"
    Then I expect to see an error message

  Scenario: Complete data
    Given I am viewing the service page with all fields compiled
    When I click "Submit"
    Then I expect to see a confirmation message
