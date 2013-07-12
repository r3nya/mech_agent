require 'mechanize'

agent = Mechanize.new
page = agent.get('http://www.google.ru')
google_form = page.form('f')
google_form.q = 'mechanize'
page = agent.submit(google_form, google_form.buttons.first)

page.links.each do |l|
  puts link.text
end
