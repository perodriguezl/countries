Dado(/^que voy a la portada$/) do
  @@game.test_mode true
  @@game.reset
  visit "/"
end

Entonces(/^veo "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

Entonces(/^veo la imagen "(.*?)"$/) do |capital|
  last_response.should have_xpath("//img[@src=\"http://www.flags.net/images/largeflags/#{capital}\"]")
end

Cuando(/^respondo la Pregunta (\d+)$/) do |arg1|
  fill_in("pais", :with => "Cualquier Cosa")
  click_button("enviar")
end

Dado(/^que voy a la portada en Pregunta (\d+)$/) do |arg1|
  arg1 = arg1.to_i - 1
  visit "/?step=#{arg1}"
end

Cuando(/^respondo Pregunta con "(.*?)"$/) do |respuesta|
  fill_in("pais", :with => respuesta)
  click_button("enviar")
end

Cuando(/^hago reinicio$/) do
  click_link("Reiniciar")
end

