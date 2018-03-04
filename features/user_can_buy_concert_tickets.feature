Feature: User can buy concert tickets
  As a registered user
  In order to purchase tickets with discount
  I want to be able to access a ticket sales page.


  Scenario: User can buy tickets
      Given I am on the index page
      And I click the button "Concert tickets"
      Then I should be on "Ticket sales" page
      And I should see "Upcomming Concerts"
      And I click the "Buy ticket" button
      Then I should be redirected to cart page
