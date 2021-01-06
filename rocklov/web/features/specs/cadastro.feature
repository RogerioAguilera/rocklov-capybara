#language: pt

Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @cadastro
    Cenario: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome            | email                     | senha |
            | Guilherme Zieme | guilherme_zieme@yahoo.com | 123   |
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentativa do Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o nome
            | nome         | email        | senha         |
            | <nome_input> | <email_input | <senha_input> |
        Então vejo a mensagem de alerta:        "<mensagem_output> "

        Exemplos:
            | nome_input      | email_input               | senha_input | mensagem_output                  |
            |                 | guilherme_zieme@yahoo.com | 123         | Oops. Informe seu nome completo! |
            | Guilherme Zieme |                           | 123         | Oops. Informe um email válido !  |
            | Guilherme Zieme | guilherme#gmail.com       | 123         | Oops. Informe um email válido !  |
            | Guilherme Zieme | guilherme$yahoo.com       | 123         | Oops. Informe um email válido !  |
            | Guilherme Zieme | guilherme@yahoo.com       |             | Oops. Informe sua senha secreta! |

