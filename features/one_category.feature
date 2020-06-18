Feature: Test the functoinality for selecting only one category and submitting the form

  Scenario: The user should be able to select one category and submit the form
    Given A user is at the fantasy name generator page
    When They select only one category, "Pixie"
    Then They are able to submit the form

  Scenario: All names generated for the user should match the one category the user chose
    Given A user is on the fantasy name generator page
    When They select only one category and submit the form, "Pixie"
    Then All of the names generated match the category chosen, "pixie"
