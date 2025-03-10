@first_name = ''
@last_name = ''

# The user should be able press the suggest button and have a name randomly generated in the field
Given(/^User is on the fantasy name generator page$/) do
  validate_main_page
end

When(/^They press the suggest button$/) do
  find("[name=original_name]").value == ''
  page.click_button("Suggest")
end

Then(/^A name is randomly generated in the field and they are able to submit the form$/) do
  find("[name=original_name]").value != ''
  page.click_button("Write me some fantasy names")
  find('h2', :text => "Best Suggestions")
end

# The user should be able to find the suggested name generated on the suggested names page
Given(/^A User is on the Fantasy Name Generator page and they press the suggest button$/) do
  validate_main_page
  page.click_button("Suggest")
end

When(/^They submit the form$/) do
  random_name = find("[name=original_name]").value
  @first_name = random_name.split(' ')[0]
  @last_name = random_name.split(' ')[1]
  page.click_button("Write me some fantasy names")
end

Then(/^They can find either the first or last name in the list of generated names$/) do
  found = false
  page.all('div.name').each do |name|
    if name.text.downcase.include?(@first_name.downcase) || name.text.downcase.include?(@last_name.downcase)
      found = true
      break
    end
  end

  if found != true
    fail(StandardError.new("Failed Test - Name Not Found"))
  end
end
