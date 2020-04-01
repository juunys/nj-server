@admin_login

Feature: Logging in

	As a User admin
	I want to login with my account
	So that I can administrate the application

	Scenario: Admin is not logged in
		Given no current user
		When I access a page
		Then the login form should be shown
	    And I should not be authorized

    Scenario: Admin enters wrong password
	    Given a registered user with the email "admin@nanjun.com" with password "123" exists
	    And I am on the "/admin/login" page
	    When I fill in "email" with "admin@nanajun.com"
	    And I fill in "password" with "1234"
	    And I press "Sign in"
	    Then the login form should be shown
	    And I should see "Bad email or password"
	    And I should not be signed in
 
  	Scenario: Admin is confirmed and enters correct password
	    Given a confirmed user with the email "admin@nanajun.com" with password "123" exists
	    And I am on the "/admin/login" page
	    When I fill in "email" with "admin@nanajun.com"
	    And I fill in "password" with "123"
	    And I press "Sign in"
	    Then I should be redirected to "/admin/dashboard"
	    And I should see "Signed in successfully"    
	    And I should be signed in
