#language: pt

Funcionalidade: Cadastro de Contatos
    Para que eu possa ter uma agenda de contatos
    Sendo um usuario
    Posso fazer um novo cadastro com nome e whats do meu contato


Cenario: Novo Contato

    Dado que "Silas Simplismente" e "1199998001" e o meu novo contato
    Quando cadastro este contato na minha agenda
    Entao devo ver a mensagem "Contato criado com sucesso"

Cenario: Contato duplicado

    Dado que "Papito" e "11946800923" e o meu novo contato
    Mas eu já cadastrei este contato
    Quando cadastro este contato na minha agenda
    Entao devo ver a mensagem "Whats já está em uso"