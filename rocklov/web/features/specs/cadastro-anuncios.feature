#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibilizá-los para locação

    Contexto: Login
        * Login com "zezao@gmail.com" e "123456"

    Cenario: Novo equipo
        Dado que acesso o formulário do cadastro de anúncios
            E que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ser esse item no meu Dashboard

    @temp
    Esquema do Cenario: Tentativa do cadastro de anúncios

        Dado que acesso o formulário do cadastro de anúncios
            E que eu tenho o seguinte equipamento:
            | thumb     | <foto>      |
            | nome      | <nome>      |
            | categoria | <categoria> |
            | preco     | <preco>     |
        Quando submeto o cadastro desse item
        Então deve conter a mensagem de alerta: "<saida>"

        Exemplos:
            | foto          | nome             | categoria | preco | saida                               |
            |               | Violao de Nylon  | Cordas    | 150   | Adicione uma foto no seu anúncio    |
            | clarinete.jpg |                  | Outros    | 250   | Informe a descrição do anúncio!     |
            | mic.jpg       | Microfone Shure  |           | 100   | Informe a categoria                 |
            | trompete.jpg  | Trompete Clássic | Outros    |       | Informe o valor da diária           |
            | conga.jpg     | Conga            | Outros    | abc   | O valor da diária deve ser numérico |
            | conga.jpg     | Conga            | Outros    | 100a   | O valor da diária deve ser numérico |


