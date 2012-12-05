Feature: Admin user creates rate
  As an admin user
  In order to calculate subcontractor job log reimbursements and labor payments
  I want to create rates unique to a client and subcontractor relationship for miles and labor

  
Background:
    Given there is an admin user "admin@example.com" with password "password"
    When I go to the homepage
    And I click "Admin"
    And I fill in "admin@example.com" for "Email"
    And I fill in "password" for "Password"
    And I click "Login"
    Then I should see "Signed in successfully."
    And I click "Rates"
    Given the following clients:
      | name      |
      | Jeff City |
      | Knox South|
    Given the following subcontractors:
      | first_name|
      | Ben       |
      | Jane      |
    And I click "New Rate"

  Scenario: Happy Path
    And I select "Jeff City" from "Client"
    And I select "Ben Bridges" from "Subcontractor"
    And I fill in ".55" for "Miles rate"
    And I fill in "30.00" for "Labor rate"
    And I click "Create Rate"
    Then I should see "Rate was successfully created."
    And I should see "Jeff City"
    And I should see "Ben Bridges"
    And I should see ".55"
    And I should see "30.00"

  Scenario: Admin attempts to skip client
    And I select "" from "Client"
    And I select "Ben Bridges" from "Subcontractor"
    And I fill in ".55" for "Miles rate"
    And I fill in "30.00" for "Labor rate"
    And I click "Create Rate"
    Then I should not see "Rate was successfully created."
    And I should see "" in the "Client" field
    And I should see "can't be blank"
    And "Ben Bridges" should be selected for "Subcontractor"
    And I should see ".55" in the "Miles rate" field
    And I should see "30.00" in the "Labor rate" field

  Scenario: Admin attempts to skip subcontractor
    And I select "Jeff City" from "Client"
    And I select "" from "Subcontractor"
    And I fill in ".55" for "Miles rate"
    And I fill in "30.00" for "Labor rate"
    And I click "Create Rate"
    Then I should not see "Rate was successfully created."
    And "Jeff City" should be selected for "Client"
    And I should see "" in the "Subcontractor" field
    And I should see "can't be blank"
    And I should see ".55" in the "Miles rate" field
    And I should see "30.00" in the "Labor rate" field


  Scenario: Admin attempts to skip miles rate
    And I select "Jeff City" from "Client"
    And I select "Ben Bridges" from "Subcontractor"
    And I fill in "" for "Miles rate"
    And I fill in "30.00" for "Labor rate"
    And I click "Create Rate"
    Then I should not see "Rate was successfully created."
    And "Jeff City" should be selected for "Client"
    And "Ben Bridges" should be selected for "Subcontractor"
    And I should see "" in the "Miles rate" field
    And I should see "can't be blank"
    And I should see "30.00" in the "Labor rate" field


  Scenario: Admin attempts to skip labor rate
    And I select "Jeff City" from "Client"
    And I select "Ben Bridges" from "Subcontractor"
    And I fill in ".55" for "Miles rate"
    And I fill in "" for "Labor rate"
    And I click "Create Rate"
    Then I should not see "Rate was successfully created."
    And "Jeff City" should be selected for "Client"
    And "Ben Bridges" should be selected for "Subcontractor"
    And I should see ".55" in the "Miles rate" field
    And I should see "" in the "Labor rate" field
    And I should see "can't be blank"

