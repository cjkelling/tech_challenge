# The user should be able to select one category and submit the form
Given(/^A user is at the fantasy name generator page$/) do
  validate_main_page
end

When(/^They select only one category, "(.*?)"$/) do |category|
  page.all('input:checked', count: 23)
  page.click_button("Uncheck all")
  page.all('input:checked', count: 0)
  page.find("[value=#{category}]").click
  page.all('input:checked', count: 1)
end

Then(/^They are able to submit the form$/) do
  page.click_button("Write me some fantasy names")
  find('h2', :text => "Best Suggestions")
end

# All names generated for the user should match the one category the user chose
When(/^They select only one category and submit the form, "(.*?)"$/) do |category|
  page.click_button("Uncheck all")
  page.find("[value=#{category}]").click
  page.click_button("Write me some fantasy names")
end

Then(/^All of the names generated match the category chosen, "(.*?)"$/) do |category|
  page.all('div.name').each do |name|
    name.assert_text(:visible, "Ideal for a #{category}")
  end
end
