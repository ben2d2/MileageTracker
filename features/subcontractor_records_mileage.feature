Feature: Subcontractor records mileage
  As a Subcontractor
  In order to track my mileage
  I want to record my mileage

  Acceptance Criteria:
  * Record must have date, client & mileage
  * Record must not be publicly visible once saved

  Background:
    Given I am signed in
    Given I am on the homepage
    And I click "Record Mileage"
    Then I should see "Record your mileage here"


  Scenario: Happy Path
    When I fill in "11/12/12" for "Date"
    And I select "Jeff City" for "Client"
    And I fill in "45" for "Mileage"
    And I press "Record Mileage"
    Then I should see "Your mileage has been recorded"
    And I should see the following table
      | date     | client        | mileage | rate |
      | 11/12/12 | Jeff City     | 45      | 24.75|


  Scenario: Subcontractor attempts to skip date
    When I fill in "" for "Date"
    And I select "Jeff City" for "Client"
    And I fill in "45" for "Mileage"
    And I press "Record Mileage"
    Then I should not see "Your mileage has been recorded"
    And I should see "" in the "Date" field
    And I should see "Jeff City" for "Client" field
    And I should see "45" in the "Mileage" field
    And I should see "Date can't be blank"


  Scenario: Subcontractor attempts to skip client
    When I fill in "11/12/12" for "Date"
    And I select "" for "Client"
    And I fill in "45" for "Mileage"
    And I press "Record Mileage"
    Then I should not see "Your mileage has been recorded"
    And I should see "11/12/12" in the "Date" field
    And I should see "" for "Client" field
    And I should see "45" in the "Mileage" field
    And I should see "Client can't be blank"
    

  Scenario: Subcontractor attempts to skip mileage
    When I fill in "11/12/12" for "Date"
    And I select "Jeff City" for "Client"
    And I fill in "" for "Mileage"
    And I press "Record Mileage"
    Then I should not see "Your mileage has been recorded"
    And I should see "11/12/12" in the "Date" field
    And I should see "Jeff City" for "Client" field
    And I should see "" in the "Mileage" field
    And I should see "Mileage can't be blank"  


