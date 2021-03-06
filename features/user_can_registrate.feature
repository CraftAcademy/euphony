Feature: Visitor can register
    As a visitor
    In order to use the application
    I would like to be able to register

    Background:
      Given the following user exist
        | email         | password    | password_confirmation |
        | oskar@quad.se | password123 | password123           |
      Given I am on the index page
      When I click "Register"
      Then I should be redirected to "Registration" page

    Scenario: Visitor can register
      When I fill in "Email" with "hellu@hotmale.com"
      And I fill in "Password" with "password123"
      And I fill in "Password confirmation" with "password123"
      And I click "Sign up"
      Then I should be redirected to 'index' page
      And I should see the message "Welcome! You have signed up successfully"

    Scenario: Visitor fills in all fields expect Email [Sad Path]
      Given I fill in "Password" with "holahoop"
      And I fill in "Password confirmation" with "holahoop"
      And I click "Sign up"
      Then I should see "1 error prohibited this user from being saved: Email can't be blank"

    Scenario: Visitor fills in all fields expect Password [Sad Path]
      Given I fill in "Email" with "holahoop@hotmale.se"
      And I fill in "Password confirmation" with "holahoop"
      And I click "Sign up"
      Then I should see "2 errors prohibited this user from being saved: Password can't be blankPassword confirmation doesn't match Password"

    Scenario: Visitor fills in all fields expect Password confirmation [Sad Path]
      Given I fill in "Email" with "holahoop@hotmale.se"
      And I fill in "Password" with "holahoop"
      And I click "Sign up"
      Then I should see "1 error prohibited this user from being saved: Password confirmation doesn't match Password"

    Scenario: Visitor fills in invalid password
      When I fill in "Email" with "hellu@hotmale.com"
      And I fill in "Password" with "pas"
      And I fill in "Password confirmation" with "pas"
      And I click "Sign up"
      Then I should see "1 error prohibited this user from being saved: Password is too short"
