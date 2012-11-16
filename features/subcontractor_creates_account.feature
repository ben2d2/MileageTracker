Feature: Subcontractor creates account

  Scenario: Happy Path
    Given I am on the homepage
    When I click "Sign Up"
    Then I should see "Sign up"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I fill in "foobar" for "Password confirmation"
    And I fill in "Ben" for "First name"
    And I fill in "Bridges" for "Last name"
    And I fill in "555-555-5555" for "Phone"
    And I press "Sign up"
    Then I should see "Welcome! You have signed up successfully."


  Scenario: Subcontractor leaves email field blank
    Given I am on the homepage
    When I click "Sign Up"
    Then I should see "Sign up"
    And I fill in "" for "Email"
    And I fill in "foobar" for "Password"
    And I fill in "foobar" for "Password confirmation"
    And I fill in "Ben" for "First name"
    And I fill in "Bridges" for "Last name"
    And I fill in "555-555-5555" for "Phone"
    And I press "Sign up"
    Then I should see "Email can't be blank"
    And I should see "" in the "Email" field
    And I should see "Ben" in the "First name" field
    And I should see "Bridges" in the "Last name" field
    And I should see "555-555-5555" in the "Phone" field


  Scenario: Subcontractor leaves first name field blank
    Given I am on the homepage
    When I click "Sign Up"
    Then I should see "Sign up"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I fill in "foobar" for "Password confirmation"
    And I fill in "" for "First name"
    And I fill in "Bridges" for "Last name"
    And I fill in "555-555-5555" for "Phone"
    And I press "Sign up"
    Then I should see "First name can't be blank"
    And I should see "" in the "First name" field
    And I should see "Bridges" in the "Last name" field
    And I should see "555-555-5555" in the "Phone" field


    Scenario: Subcontractor leaves last name field blank
    Given I am on the homepage
    When I click "Sign Up"
    Then I should see "Sign up"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I fill in "foobar" for "Password confirmation"
    And I fill in "Ben" for "First name"
    And I fill in "" for "Last name"
    And I fill in "555-555-5555" for "Phone"
    And I press "Sign up"
    Then I should see "Last name can't be blank"
    And I should see "Ben" in the "First name" field
    And I should see "" in the "Last name" field
    And I should see "555-555-5555" in the "Phone" field


    Scenario: Subcontractor leaves phone field blank
    Given I am on the homepage
    When I click "Sign Up"
    Then I should see "Sign up"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I fill in "foobar" for "Password confirmation"
    And I fill in "Ben" for "First name"
    And I fill in "Bridges" for "Last name"
    And I fill in "" for "Phone"
    And I press "Sign up"
    Then I should see "Phone can't be blank"
    And I should see "Ben" in the "First name" field
    And I should see "Bridges" in the "Last name" field
    And I should see "" in the "Phone" field
