Feature: Test the functionality of the Suggest button

  Scenario: The user should be able press the suggest button and have a name randomly generated in the field
    Given User is on the fantasy name generator page
    When They press the suggest button
    Then A name is randomly generated in the field and they are able to submit the form

  Scenario: The user should be able to find the suggested name generated on the suggested names page
    Given A User is on the Fantasy Name Generator page and they press the suggest button
    When They submit the form
    Then They can find either the first or last name in the list of generated names
