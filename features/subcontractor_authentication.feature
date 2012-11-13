Feature: Subcontractor authentication

  Scenario: Signing in
    Given there is a user "ben@example.com" with password "foobar"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I click "Sign in"
    Then I should see "Signed in successfully."


  Scenario: Signing in with incorrect password
    Given there is a user "ben@example.com" with password "notfoobar"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I click "Sign in"
    Then I should see "Invalid email or password"
    And the "Email" field should contain "ben@example.com"


  Scenario: Logging out
    Given there is a user "ben@example.com" with password "foobar"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I click "Sign in"
    Then I should see "Signed in successfully."
    And I am on the homepage
    When I click "Sign Out"
    Then I should see "Signed out successfully."


  Scenario: Signed out users see appropriate links
    Given I am on the homepage
    Then I should see "Sign In"
    And I should see "Sign Up"
    And I should not see "Sign Out"


  Scenario: Signed in users see appropriate links
    Given there is a user "ben@example.com" with password "foobar"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I click "Sign in"
    Then I should see "Signed in successfully."
    And I am on the homepage
    Then I should see "Sign Out"
    And I should not see "Sign In"
    And I should not see "Sign Up"