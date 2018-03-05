Feature: User can buy concert tickets
  As a registered user
  In order to purchase tickets with discount
  I want to be able to access a ticket sales page.

  Background:
  Given the following user exist 
    | email         | password    | password_confirmation |
    | oskar@quad.se | password123 | password123           |

  Scenario: User can buy tickets
      Given I visit the index page
      And I click "Log in using Spotify"
      Then I should be redirected to "index" page
      And I should see "Successfully authenticated from Spotify account"
      And I click the button "Concert tickets"
      Then I should be redirected to "Ticket sales" page
      And I should see "Upcomming Concerts"
      And I click "Buy ticket"
      Then I should be redirected to "cart" page
