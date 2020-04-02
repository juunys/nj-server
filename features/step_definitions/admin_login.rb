Given(/^no current user$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I access a page$/) do
  visit 'localhost:3000'
end

Then(/^the login form should be shown$/) do
  expect(page).to have_current_path(session_path)
end

Then(/^I should not be authorized$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^a registered user with the email "([^"]*)" with password "([^"]*)" exists$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am on the "([^"]*)" page$/) do |arg1|
  visit 'localhost:3000'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |email, password|
  fill_in 'email', with: 'admin@nanajun.com.br'
  fill_in 'password', with: '1234'
end

When(/^I press "([^"]*)"$/) do |arg1|
  click_button 'Enviar'
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not be signed in$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

# Given(/^a confirmed user with the email "([^"]*)" with password "([^"]*)" exists$/) do |arg1, arg2|
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I should be redirected to "([^"]*)"$/) do |arg1|
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I should be signed in$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

