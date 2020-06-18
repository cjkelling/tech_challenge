@random_name = ''

# The user should be able press the suggest button and have a name randomly generated in the field
Given(/^User is on the fantasy name generator page$/) do
  find('h2', :text => "Name Generator")
  find('h3', :text => 'Find the Perfect Fantasy Name')
end

When(/^They press the suggest button$/) do
  find("[name=original_name]", :text => '')
  page.click_button("Suggest")
end

Then(/^A name is randomly generated in the field and they are able to submit the form$/) do
  find("[name=original_name]").text != ''
  page.click_button("Write me some fantasy names")
end

# The user should be able to find the suggested name generated on the suggested names page
When(/^They submit the form$/) do
  @random_name = find("[name=original_name]").text
  page.click_button("Write me some fantasy names")
end

Then(/^They can find that name in the list of generated names$/) do
  page.all('div.name').each do |name|
    page.assert_text(name.text, @random_name)
  end
end
