@admin_login

Feature: Logging in

	As a User admin
	I want to login with my account
	So that I can administrate the application

	Scenario: Admin is not logged in
		Given no current user
		When I access the dashboard page
		Then the login form should be shown

    Scenario: Admin enters wrong password
	    Given a registered user with the email "admin@nanajun.com" with password "123" exists
	    And I access login page
	    When I fill in "email" with "admin@nanajun.com" and "password" with "1234"
	    And I press "Entrar"
	    Then I should see "Falha no login! Verifique seu email ou sua Senha"
	    And I should not be signed in
 
  	Scenario: Admin is confirmed and enters correct password
	    Given a confirmed user with the email "admin@nanajun.com" with password "123" exists
	    And I access login page
	    When I fill in "email" with "admin@nanajun.com" and "password" with "123"
	    And I press "Entrar"
	    Then I should be redirected to "/admin/dashboard"
