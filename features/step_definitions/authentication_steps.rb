When /^I sign out$/ do
  step %{I click "Sign Out"}
end

Given /^there is a subcontractor "(.*?)" with password "(.*?)"$/ do |email, password|
  @subcontractor = Fabricate(:subcontractor, email: email, password: password, password_confirmation: password)
end

Given /^there is an admin user "(.*?)" with password "(.*?)"$/ do |email, password|
  @admin = Fabricate(:admin_user, email: email, password: password)
end

Given /^I am signed in as "(.*?)"$/ do |email|
  @subcontractor = Fabricate(:subcontractor, email: email)
  sign_in_as @subcontractor
end

Given /^I am signed in$/ do
  @subcontractor = Fabricate(:subcontractor)
  sign_in_as @subcontractor
end

def sign_in_as subcontractor
  steps %Q{
    Given there is a subcontractor "ben@example.com" with password "foobar"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I click "Sign in"
    Then I should see "Signed in successfully."
  }
end

def sign_in_as admin_user
  steps %Q{
    Given there is an admin user "admin@example.com" with password "password"
    When I go to the homepage
    And I click "Admin"
    And I fill in "admin@example.com" for "Email"
    And I fill in "password" for "Password"
    And I click "Login"
    Then I should see "Signed in successfully."
  }
end
