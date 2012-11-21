Feature: Subcontractor authentication
@wip
  Scenario: Signing in
    Given there is a subcontractor "ben@example.com" with password "foobar"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I click "Sign in"
    Then I should see "Signed in successfully."
    And I should see the following table:
    | date       | client    | miles | hours |
    | 11/12/2012 | Jeff City | 45    | 8.7   |
    | 11/15/2012 | Maryville | 80    | 9.3   |


  Scenario: Signing in with incorrect password
    Given there is a subcontractor "ben@example.com" with password "notfoobar"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I click "Sign in"
    Then I should see "Invalid email or password"
    And the "Email" field should contain "ben@example.com"


  Scenario: Logging out
    Given there is a subcontractor "ben@example.com" with password "foobar"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I click "Sign in"
    Then I should see "Signed in successfully."
    And I am on the homepage
    When I click "Sign Out"
    Then I should see "Signed out successfully."


  Scenario: Signed out subcontractors see appropriate links
    Given I am on the homepage
    Then I should see "Sign In"
    And I should see "Sign Up"
    And I should not see "Sign Out"


  Scenario: Signed in subcontractors see appropriate links
    Given there is a subcontractor "ben@example.com" with password "foobar"
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