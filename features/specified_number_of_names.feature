Feature: Test the functionality for specifying the number of names generated

  Scenario: The user should be able to enter a number between 10 and 100 and get that many names generated
    Given A user is on the fantasy name generator page
    When They enter a valid number, "30", in the search field
    Then They are given an amount of names equal to their valid number, "30"

  Scenario: The user should receive the 10 names if number entered is below 10
    Given A user is on the fantasy name generator page
    When They enter a number in the search field below 10, "7"
    Then They are given 10 names

  Scenario: The user should cap at 100 names if the number entered is above 100
    Given A user is on the fantasy name generator page
    When They enter a number in the search field greater than 100, "111"
    Then They are given 100 names
