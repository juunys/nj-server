@admin_user

Feature: CRUD operation on User

	As a User admin
	I want to be able to manage the users
	So I can control the users in the application

	Background:
	    Given I am currently logged in to an admin account

	Scenario: Admin should be able to see all users
		Given I'm on users page
		Then the admin should see all users

	Scenario: Should be able to create a new blog
		Given I am on the new_user page
		When I fill in first_name with "Jun" and I fill in last_name with "Yamada"
		And I fill in email with "jun@nanajun.com"
		And I fill in password with "123"
		And I fill in password_confirmation with "123"
		And I select status_user_id with value 1
		And I select user_role_id with value 1
		And I press "Criar/Atualizar"
		Then I should be redirected to users page and I should see "Usuário criado com sucesso!"