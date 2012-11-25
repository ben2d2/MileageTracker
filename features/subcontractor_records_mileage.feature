Feature: Subcontractor records mileage
  As a Subcontractor
  In order to track my mileage
  I want to record my mileage

  Acceptance Criteria:
  * Record must have date, client & mileage
  * Record must not be publicly visible once saved

  Background:
    Given I am signed in as a subcontractor
    Then I should see "Signed in successfully."
    And I am on the homepage
    Given the following clients:
      | name      |
      | Jeff City |
      | Knox South|
    And I click "Log Time & Miles"
    Then I should see "Record your mileage and time here"

  Scenario: Happy Path
    When I fill in "2012-11-12" for "Date"
    And I select "Jeff City" from "Client"
    And I fill in "45" for "Miles"
    And I fill in "8.7" for "Hours"
    And I press "Create Job Log"
    Then I should see "Your mileage and time were recorded successfully!"

  Scenario: Subcontractor attempts to skip date
    When I fill in "" for "Date"
    And I select "Jeff City" from "Client"
    And I fill in "45" for "Miles"
    And I fill in "8.7" for "Hours"
    And I press "Create Job Log"
    Then I should see "Your mileage couldn't be saved."
    And I should see "" in the "Date" field
    And "Jeff City" should be selected for "Client"
    And I should see "45" in the "Miles" field
    And I should see "8.7" in the "Hours" field
    And I should see "Date can't be blank"

  Scenario: Subcontractor attempts to skip client
    When I fill in "2012-11-12" for "Date"
    And I select "" from "Client"
    And I fill in "45" for "Miles"
    And I fill in "8.7" for "Hours"
    And I press "Create Job Log"
    Then I should not see "Your mileage has been recorded"
    And I should see "2012-11-12" in the "Date" field
    And I should see "" in the "Client" field
    And I should see "45" in the "Miles" field
    And I should see "8.7" in the "Hours" field
    And I should see "Client can't be blank"
    
  Scenario: Subcontractor attempts to skip mileage
    When I fill in "2012-11-12" for "Date"
    And I select "Jeff City" from "Client"
    And I fill in "" for "Miles"
    And I fill in "8.7" for "Hours"
    And I press "Create Job Log"
    Then I should not see "Your mileage has been recorded"
    And I should see "2012-11-12" in the "Date" field
    And "Jeff City" should be selected for "Client"
    And I should see "" in the "Miles" field
    And I should see "8.7" in the "Hours" field
    And I should see "Miles can't be blank"  

  Scenario: Subcontractor attempts to skip hours
    When I fill in "2012-11-12" for "Date"
    And I select "Jeff City" from "Client"
    And I fill in "45" for "Miles"
    And I fill in "" for "Hours"
    And I press "Create Job Log"
    Then I should not see "Your mileage has been recorded"
    And I should see "2012-11-12" in the "Date" field
    And "Jeff City" should be selected for "Client"
    And I should see "45" in the "Miles" field
    And I should see "" in the "Hours" field
    And I should see "Hours can't be blank"  


