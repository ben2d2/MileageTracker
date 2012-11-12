When /^I sign out$/ do
  step %{I click "Sign Out"}
end

Given /^there is a subcontractor "(.*?)" with password "(.*?)"$/ do |email, password|
  @subcontractor = Fabricate(:subcontractor, email: email, password: password, password_confirmation: password)
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
    Given I am on the homepage
    When I click "Sign In"
    And I fill in "#{subcontractor.email}" for "Email"
    And I fill in "password" for "Password"
    And I click "Sign in"
    Then I should see "You are now signed in."
  }
end
