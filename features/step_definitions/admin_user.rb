#-------------------- USER INDEX -------------------------# 

Given("I am currently logged in to an admin account") do
	visit admin_login_path
	fill_in 'email', with: 'admin@nanajun.com'
	fill_in 'password', with: '123'
	click_on('Entrar')
end

# Given("I'm on users page") do
#   	visit admin_users_path
# end

# Then("the admin should see all users") do
# 	expect(page).to have_current_path(admin_users_path)
# end


# #-------------------- USER CREATE -------------------------# 

# Given("I am on the new_user page") do
#   visit '/admin/users/new'
# end

# When("I fill in first_name with {string} and I fill in last_name with {string}") do |string, string2|
# 	fill_in 'user[first_name]', with: string
# 	fill_in 'user[last_name]', with: string2
# end

# When("I fill in email with {string}") do |string|
# 	fill_in 'user[email]', with: string
# end

# When("I fill in password with {string}") do |string|
# 	fill_in 'user[password]', with: string
# end

# When("I fill in password_confirmation with {string}") do |string|
# 	fill_in 'user[password_confirmation]', with: string
# end

# When("I select status_user_id with value 1") do
# 	find('#user_status_user_id').find(:xpath, 'option[1]').select_option
# end

# When("I select user_role_id with value {int} and I press {string}") do |int, string|
# 	find('#user_user_role_id').find(:xpath, 'option[1]').select_option
# 	click_on('Criar/Atualizar')
# end


# Then("I should be redirected to users page and I should see {string}") do |string|
# 	expect(page).to have_current_path(admin_users_path)
# 	expect(page).to have_content string
# end

#-------------------- USER UPDATE -------------------------# 

Given("I am on the users page") do
  	visit admin_users_path
end

When("I clicked on {string} link of a specific user") do |string|
  	visit edit_admin_user_path(1)
end

When("I fill in password with {string}") do |string|
	fill_in 'user[password]', with: string
end

When("I fill in password_confirmation with {string}") do |string|
	fill_in 'user[password_confirmation]', with: string
end

When("I fill in {string} with {string} and I press {string}") do |string, string2, string3|
	fill_in 'user[first_name]', with: string2
	click_on('Criar/Atualizar')
end

Then("I should be redirected to users show page and I should see {string}") do |string|
	expect(page).to have_current_path(admin_users_path
	expect(page).to have_content string
end

