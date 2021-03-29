#language: pt

Funcionalidade: Login
    Sendo um usuario de um Portal
    Quero acessar o sistema usando meu email e senha
    Para que possa ter acesso as operações de um Portal


    Cenario: Login do usuário

        Dado que acesso a pagina do sistema
        Quando envio minhas credenciais de acesso com: "email" e "senha"
        Então devo ser redirecionado para a pagina principal