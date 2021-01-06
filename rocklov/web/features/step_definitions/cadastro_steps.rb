Dado("que acesso a página de cadastro") do
  @signup_page.open
end

Quando("submeto o meu cadastro completo:") do |table|
  user = table.hashes.first

  MongoDB.new_remove_user(user[:email])
  @signup_page.create(user)
end
