Feature: Test Features
	Some test scenarios to make sure the website is generally working.

@api
  Scenario: Check homepage
    Given I am on the homepage
    Then I should see the text "Welcome to This is demo site"