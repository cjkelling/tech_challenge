module Helpers
  def validate_main_page
    find('title', :text => 'Fantasy Name Generator', :visible => :hidden)
    find('h2', :text => "Name Generator")
    find('h3', :text => 'Find the Perfect Fantasy Name')
  end
end

World(Helpers)
