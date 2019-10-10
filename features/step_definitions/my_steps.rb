Dado(/^que voy a la portada$/) do
  visit "/"
end

Entonces(/^veo "(.*?)"$/) do |capital|
  last_response.body.should =~ /#{capital}/m
end

Cuando(/^introduce "(.*?)"$/) do |arg1|
  fill_in("pais", :with => arg1)
  click_button("enviar")
end

