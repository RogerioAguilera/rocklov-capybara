#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibilizá-los para locação

    Cenario: Novo equipo
        E que estou logado como "zezao@gmail.com" e "123456"
        E que eu tenho o seguinte equipamento:
            |thumb    |fender-sb.jpg  |
            |nome     | Fender Strato |
            |categoria| Cordas        |
            |preco    |200            |
        Quando submeto o cadastro desse item
        Então devo ser esse item no meu Dashboard
