Feature: Test Features
	Some test scenarios to make sure the website is generally working.

@api
  Scenario: Non-JS messages
    Given I am on "/user/login"
    When I fill in "a fake user" for "Username"
    And I fill in "a fake password" for "Password"
    When I press "Log in"
    Then I should see the error message "Unrecognized username or password"