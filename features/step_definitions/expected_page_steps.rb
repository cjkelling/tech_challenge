Given(/^The user attempts to visit the Fantasy Name Generator page$/) do
  find('title', :text => 'Fantasy Name Generator', :visible => :hidden)
end

Then(/^They see the text for the Fantasy Name Generator page$/) do
  validate_main_page
end
