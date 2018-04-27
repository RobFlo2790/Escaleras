Given(/^Visito la pagina principal$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |texto|
   last_response.body.should =~ /#{texto}/m
end

