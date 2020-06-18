Feature: Tests the functionality that a user can visit the expected page for the Fantasy Name Generator

  Scenario: The user should be able to visit the page for the Fantasy Name Generator
    Given The user is on the fantasy name generator page
    Then I see the text "Name Generator" and I see the text "Find the Perfect Fantasy Name"
