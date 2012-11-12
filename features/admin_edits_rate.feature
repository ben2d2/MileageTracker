Feature: Admin edits rate

  Background:
    Given the following table:
      | subcontractor     | client        | rate |
      | ben@example.com   | Jeff City     | .55  |
    And I am on that rate's page

  Scenario: Successful edit
    When I click "Edit Rate"
    Then I should see "ben@example.com" for "Subcontractor"
    And I should see "Jeff City" for "Client"
    And I fill in ".45" for "Rate"
    And I press "Update Rate"
    Then I should be on that rate's page
    And I should see the following table
      | subcontractor     | client        | rate |
      | ben@example.com   | Jeff City     | .45  |

  Scenario: Unsuccessful edit
    When I click "Edit Rate"
    Then I should see "ben@example.com" for "Subcontractor"
    And I should see "Jeff City" for "Client"
    And I fill in "" for "Rate"
    And I press "Update Rate"
    Then I should see "Rate can't be blank"
