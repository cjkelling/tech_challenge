# QA Code Test

### Setup
1. Download and unzip file
2. Rename your project "qa-interview-yourname"
3. Make sure your Ruby environment is using `ruby 2.3.3`
4. Be sure to bundle install
5. Run the example feature file:
    - `bundle exec cucumber features/example.feature`
6. Create the tests below in order.  You should be able to create any tests by building on the
   files that are already set up in the project.

Homepage='https://www.name-generator.org.uk/fantasy/'

### Tests
Write automated test scenarios to validate each of the following:
1. That you are on the expected page for the Fantasy Name Generator
  - Validates title for webpage
  - Validates main h2 and h3 tags for page

2. Select only one category and submit the form
  - Validates all 23 checkboxes default to being checked
  - Validates 'Uncheck all' button deselects checkboxes
  - Validates ability to select a single checkboxes
  - Validates count after one box is checked

3. Validate that the selected category from scenario 2 is present in each entry of the list of names
  - Checks each name generated to validate all generated names match the category selected

4. Use the "Suggest" button and validate that a human name has been added to the human name input field. Submit the form.
  - Validates suggested name field starts as empty
  - Validates ability to press Suggest Name button
  - Validates name field is no longer empty after button is pressed

5. Validate that the suggested human name (either first or last name) from scenario 4 is present at least once in the list of names
  - Validates either first or last name that was randomly generated can be found on suggested names page

6. Submit the form with a specified number of names and validate that the correct number of suggestions populates
  - Validates that a number can be entered into the number field
  - Validates the number of names returned matches a valid number entered, 10 - 100
  - Validates a return of 10 names if a number lower than 10 is entered
  - Validates a return of 100 names if a number greater than 100 is entered
  - Added sleep(0.5) to these tests to prevent error, unable to hit button after entering number
