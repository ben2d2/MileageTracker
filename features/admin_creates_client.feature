Feature: Admin creates client
  As an admin
  In order to record my subcontractors mileage to be billed per client
  I want to create clients

  Acceptance Criteria:
  * Client must have name, contact, email, and phone
  * Client must not be publicly visible once saved
  

  Scenario: Happy Path
    Given I am on the homepage
    And I click "Create Client"
    Then I should see "Create a new client here"
    When I fill in "Jeff City" for "Name"
    And I fill in "Joe Smith" for "Contact"
    And I fill in "joe@example.com" for "Email"
    And I fill in "555-555-5555" for "Phone"
    And I click "Sign up"
    And I should see "Your client has been saved"
    And I should see "Jeff City"
    And I should see "Joe Smith"
    And I should see "joe@example.com"
    And I should see "555-555-5555"

  Scenario: Admin attempts to skip email
    Given I am on the homepage
    And I click "Create Client"
    Then I should see "Create a new client here"
    When I fill in "" for "Email"
    And I fill in "Jeff City" for "Name"
    And I fill in "Joe Smith" for "Contact"
    And I fill in "555-555-5555" for "Phone"
    And I click "Sign up"
    Then I should see "Your client couldn't be saved."
    And I should see "" in the "Email" field
    And I should see "Jeff City" in the "Name" field
    And I should see "Joe Smith" in the "Contact" field
    And I should see "555-555-5555" in the "Phone" field

  Scenario: Admin attempts to skip name
    Given I am on the homepage
    And I click "Create Client"
    Then I should see "Create a new client here"
    When I fill in "joe@example.com" for "Email"
    And I fill in "" for "Name"
    And I fill in "Joe Smith" for "Contact"
    And I fill in "555-555-5555" for "Phone"
    And I click "Sign up"
    Then I should see "Your client couldn't be saved."
    And I should see "joe@example.com" in the "Email" field
    And I should see "" in the "Name" field
    And I should see "Joe Smith" in the "Contact" field
    And I should see "555-555-5555" in the "Phone" field


  Scenario: Admin attempts to skip contact
    Given I am on the homepage
    And I click "Create Client"
    Then I should see "Create a new client here"
    When I fill in "joe@example.com" for "Email"
    And I fill in "Jeff City" for "Name"
    And I fill in "" for "Contact"
    And I fill in "555-555-5555" for "Phone"
    And I click "Sign up"
    Then I should see "Your client couldn't be saved."
    And I should see "joe@example.com" in the "Email" field
    And I should see "Jeff City" in the "Name" field
    And I should see "" in the "Contact" field
    And I should see "555-555-5555" in the "Phone" field


 
  Scenario: Admin attempts to skip phone
    Given I am on the homepage
    And I click "Create Client"
    Then I should see "Create a new client here"
    When I fill in "joe@example.com" for "Email"
    And I fill in "Jeff City" for "Name"
    And I fill in "Joe Smith" for "Contact"
    And I fill in "" for "Phone"
    And I click "Sign up"
    Then I should see "Your client couldn't be saved."
    And I should see "joe@example.com" in the "Email" field
    And I should see "Jeff City" in the "Name" field
    And I should see "Joe Smith" in the "Contact" field
    And I should see "" in the "Phone" field
