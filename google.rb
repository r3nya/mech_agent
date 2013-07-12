require 'mechanize'

agent = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

agent.get('http://google.com/') do |page|
  search_result = page.form_with(:name => 'f') do |search|
    search.q = 'Hello world'
  end.submit

  search_result.links.each do |link|
    puts link.text
  end
end