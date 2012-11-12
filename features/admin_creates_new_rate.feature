Feature: Admin records mileage
  As an admin
  In order to edit client/subcontractor rates
  I want to select subcontractor, client and fill in rate

  Acceptance Criteria:
  * Rate must have subcontractor, client and rate
  * Rate must not be publicly visible once saved

  Background:
    Given I am on the homepage
    And I click "Edit Rates"
    Then I should see "Select a rate to edit or create a new one"


  Scenario: Happy Path
    When I select "ben@example.com" for "Subcontractor"
    And I select "Jeff City" for "Client"
    And I fill in ".55" for "Rate"
    And I press "Save Rate"
    Then I should see "Your rate has been saved"
    And I should see the following table
      | subcontractor     | client        | rate |
      | ben@example.com   | Jeff City     | .55  |


  Scenario: Admin attempts to skip subcontractor
    When I select "" for "Subcontractor"
    And I select "Jeff City" for "Client"
    And I fill in ".55" for "Rate"
    And I press "Save Rate"
    Then I should not see "Your rate has been saved"
    And I should see "" in the "Subcontractor" field
    And I should see "Jeff City" for "Client" field
    And I should see ".55" in the "Rate" field
    And I should see "Please select a Subcontractor"


  Scenario: Admin attempts to skip client
    When I select "ben@example.com" for "Subcontractor"
    And I select "" for "Client"
    And I fill in ".55" for "Rate"
    And I press "Save Rate"
    Then I should not see "Your rate has been saved"
    And I should see "ben@example.com" in the "Subcontractor" field
    And I should see "" for "Client" field
    And I should see ".55" in the "Rate" field
    And I should see "Please select a Client"


  Scenario: Admin attempts to skip rate
    When I select "ben@example.com" for "Subcontractor"
    And I select "Joe Smith" for "Client"
    And I fill in "" for "Rate"
    And I press "Save Rate"
    Then I should not see "Your rate has been saved"
    And I should see "ben@example.com" in the "Subcontractor" field
    And I should see "Joe Smith" for "Client" field
    And I should see "" in the "Rate" field
    And I should see "Rate can't be blank"  

