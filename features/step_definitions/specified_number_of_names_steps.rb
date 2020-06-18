# The user should be able to enter a number between 10 and 100 and get that many names generated
Given(/^A user is on the fantasy name generator page$/) do
  find('h2', :text => "Name Generator")
end

When(/^They enter a valid number, "(.*?)", in the search field$/) do |int|
  fill_in 'count', with: int
  page.click_button("Write me some fantasy names")
end

Then(/^They are given an amount of names equal to their valid number, "(.*?)"$/) do |int|
  find('h2', :text => "Best Suggestions")
  page.assert_selector('div.name_heading', count: int)
end

# The user should receive the 10 names if number entered is below 10
When(/^They enter a number in the search field below 10, "(.*?)"$/) do |int|
  fill_in 'count', with: int
  page.click_button("Write me some fantasy names")
end

Then(/^They are given 10 names$/) do
  find('div.name_message', :text => "Minimum names is 10.")
  page.assert_selector('div.name_heading', count: 10)
end

# The user should cap at 100 names if the number entered is above 100
When(/^They enter a number in the search field greater than 100, "(.*?)"$/) do |int|
  fill_in 'count', with: int
  page.click_button("Write me some fantasy names")
end

Then(/^They are given 100 names$/) do
  find('div.name_message', :text => "Maximum names is 100.")
  page.assert_selector('div.name_heading', count: 100)
end
