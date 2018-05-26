Dado("que {string} e {string} e o meu novo contato") do |nome, whats|
    @contato = {nome: nome, whats: whats}
end

Dado("eu já cadastrei este contato") do
    steps %(
        Quando cadastro este contato na minha agenda
    )
end
  
Quando("cadastro este contato na minha agenda") do
 visit "/contatos/new"
 fill_in "contato_nome", with: @contato[:nome]
 fill_in "contato_whats", with: @contato[:whats]
 find('input[type=submit]').click
end
  
Entao("devo ver a mensagem {string}") do |mensagem|
 expect(page).to have_content mensagem
end
  

  