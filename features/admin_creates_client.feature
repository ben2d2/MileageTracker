Feature: Admin user creates client
  As an admin user
  In order to record my subcontractors mileage to be billed per client
  I want to create clients

  Acceptance Criteria:
  * Client must have name, contact, email, and phone
  * Client must not be publicly visible once saved
  
Background:
    Given there is an admin user "admin@example.com" with password "password"
    When I go to the homepage
    And I click "Admin"
    And I fill in "admin@example.com" for "Email"
    And I fill in "password" for "Password"
    And I click "Login"
    Then I should see "Signed in successfully."
    And I click "Clients"
    And I click "New Client"

  Scenario: Happy Path
    When I fill in "Jeff City" for "Name"
    And I fill in "Joe Smith" for "Contact"
    And I fill in "joe@example.com" for "Email"
    And I fill in "555-555-5555" for "Phone"
    And I click "Create Client"
    And I should see "Client was successfully created."
    And I should see "Jeff City"
    And I should see "Joe Smith"
    And I should see "joe@example.com"
    And I should see "555-555-5555"

  Scenario: Admin attempts to skip email
    When I fill in "" for "Email"
    And I fill in "Jeff City" for "Name"
    And I fill in "Joe Smith" for "Contact"
    And I fill in "555-555-5555" for "Phone"
    And I click "Create Client"
    Then I should see "can't be blank"
    And I should see "" in the "Email" field
    And I should see "Jeff City" in the "Name" field
    And I should see "Joe Smith" in the "Contact" field
    And I should see "555-555-5555" in the "Phone" field

  Scenario: Admin attempts to skip name
    When I fill in "joe@example.com" for "Email"
    And I fill in "" for "Name"
    And I fill in "Joe Smith" for "Contact"
    And I fill in "555-555-5555" for "Phone"
    And I click "Create Client"
    Then I should see "can't be blank"
    And I should see "joe@example.com" in the "Email" field
    And I should see "" in the "Name" field
    And I should see "Joe Smith" in the "Contact" field
    And I should see "555-555-5555" in the "Phone" field



  Scenario: Admin attempts to skip contact
    When I fill in "joe@example.com" for "Email"
    And I fill in "Jeff City" for "Name"
    And I fill in "" for "Contact"
    And I fill in "555-555-5555" for "Phone"
    And I click "Create Client"
    Then I should see "can't be blank"
    And I should see "joe@example.com" in the "Email" field
    And I should see "Jeff City" in the "Name" field
    And I should see "" in the "Contact" field
    And I should see "555-555-5555" in the "Phone" field


  Scenario: Admin attempts to skip phone
    When I fill in "joe@example.com" for "Email"
    And I fill in "Jeff City" for "Name"
    And I fill in "Joe Smith" for "Contact"
    And I fill in "" for "Phone"
    And I click "Create Client"
    Then I should see "can't be blank"
    And I should see "joe@example.com" in the "Email" field
    And I should see "Jeff City" in the "Name" field
    And I should see "Joe Smith" in the "Contact" field
    And I should see "" in the "Phone" field
