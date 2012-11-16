When /^I sign out$/ do
  step %{I click "Sign Out"}
end

Given /^there is a user "(.*?)" with password "(.*?)"$/ do |email, password|
  @user = Fabricate(:user, email: email, password: password, password_confirmation: password)
end

Given /^I am signed in as "(.*?)"$/ do |email|
  @user = Fabricate(:user, email: email)
  sign_in_as @user
end

Given /^I am signed in$/ do
  @user = Fabricate(:user)
  sign_in_as @user
end

def sign_in_as user
  steps %Q{
    Given there is a user "ben@example.com" with password "foobar"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "ben@example.com" for "Email"
    And I fill in "foobar" for "Password"
    And I click "Sign in"
    Then I should see "Signed in successfully."
  }
end
