Given(/^The user is on the fantasy name generator page$/) do
  find('title', :text => 'Fantasy Name Generator', :visible => :hidden)
end

Then(/^I see the text "(.*?)" and I see the text "(.*?)"$/) do |text, text2|
  find('h2', :text => text)
  find('h3', :text => text2)
end
