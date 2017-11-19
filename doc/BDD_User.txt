Feature: Managing user

Scenario: Inserting a new user
Given I am into new user page
When I create user
Then user name must has two or more chars
And user name mush start with a letter
And user role must be valid
