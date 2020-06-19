Given(/^The user attempts to visit the Fantasy Name Generator page$/) do
  find('title', :text => 'Fantasy Name Generator', :visible => :hidden)
end

Then(/^They see the text "(.*?)" and they see the text "(.*?)"$/) do |text, text2|
  find('h2', :text => text)
  find('h3', :text => text2)
end
