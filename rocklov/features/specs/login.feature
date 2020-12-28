#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da RockLov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "django@gmail.com" e "1234"
        Então sou redirecionado para o Dashboard

        Esquema do Cenario: Tentar logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
        |email_input|senha_input|mensagem_output|
        |zelele@gmail.com|123|Usuário/ou senha inválidos.|
        |zella@555.com|123|Usuário ou senha inválidos.|
        |ft$gmail.com|1231|Oops. Informe um email válido.|
        |            |1255|Informe um email válido|
        |tart@gmail.com||Oops. Informe sua senha secreta.|

