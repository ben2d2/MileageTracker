Feature: Records have subcontractors

  Scenario: I can't see the records if I'm not signed in
    Given I am on the homepage
    And I am not signed in as "ben@example.com"
    Then I should not see "Record your mileage here"

  Scenario: When I record mileage, it is recorded with my subcontractor_id and displayed with my first and last names
    Given I am signed in as "ben@example.com"
    And I am on the homepage
    When I click "Record Mileage"
    And I fill in "2012-11-12" for "Date"
    And I select "Jeff City" for "Client"
    And I fill in "45" for "Mileage"
    And I press "Record Mileage"
    Then I should see "Your mileage has been recorded"
    And I should see "Ben Bridges"
    And I should see the following table
      | date     | client        | mileage | rate |
      | 11/12/12 | Jeff City     | 45      | 24.75|

