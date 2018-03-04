Feature: Music search
  As a user
  In order to get spotify playlists suggestions
  I would want to be able to search with specific keywords

  Scenario: User can search for music
    Given I visit the index page
    Then I click the button "Happy"
    And I should see "Enter a song you like to listen to when you feel this way:"
    Then I should fill in "query" with "Oxford comma"
    Then I click the button "Search"
    Then I should see "Suggested tracks:"
    Then I should see 20 "iframe"
