#-------------------- NO CURRENT USER -------------------------#

Given("no current user") do
  @current_user = nil
end

When("I access the dashboard page") do
  visit admin_dashboard_path
end

Then("the login form should be shown") do
  expect(page).to have_current_path(admin_login_path)
end

#-------------------- INVALID USER -------------------------# 

Given("a registered user with the email {string} with password {string} exists") do |email, password|
  @user
end

Given("I access login page") do
  visit admin_login_path
end

When("I fill in {string} with {string} and {string} with {string}") do |email, email_input, password, password_input|
  fill_in email, with: email_input
  fill_in password, with: password_input
end

When("I press {string}") do |string|
  click_on(string)
end

Then("I should see {string}") do |string|
  expect(page).to have_content string
end

And("I should not be signed in") do
  expect(page).to have_current_path(admin_login_path)
end

#-------------------- VALID USER -------------------------#

Given("a confirmed user with the email {string} with password {string} exists") do |string, string2|
end


Then("I should be redirected to {string}") do |string|
    expect(page).to have_current_path(admin_dashboard_path)
end




