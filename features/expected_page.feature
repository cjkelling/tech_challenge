Feature: Tests the functionality that when a user visits the Fantasy Name Generator, they arrive on the expected page

  Scenario: The user should be able to visit the expected page for the Fantasy Name Generator
    Given The user attempts to visit the Fantasy Name Generator page
    Then They see the text "Name Generator" and they see the text "Find the Perfect Fantasy Name"
