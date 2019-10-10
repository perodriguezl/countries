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

Cuando(/^respondo la Pregunta (\d+)$/) do |arg1|
  fill_in("pais", :with => "Cualquier Cosa")
  click_button("enviar")
end

Dado(/^que voy a la portada en Pregunta (\d+)$/) do |arg1|
  arg1 = arg1.to_i - 1
  visit "/?step=#{arg1}"
end
