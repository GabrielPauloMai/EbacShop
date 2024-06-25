#language: pt
Funcionalidade: Login na Plataforma
  Para que eu possa acessar minha conta na EBAC-SHOP
  Como cliente da EBAC-SHOP
  Eu quero fazer o login na plataforma para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login

  Cenário: Login bem-sucedido
    Quando eu inserir um usuário válido "usuario@exemplo.com"
    E inserir uma senha válida "senha123"
    E clicar no botão "login"
    Então eu devo ser redirecionado para a tela de checkout


  Esquema do Cenário: Login bem-sucedido
    Quando eu inserir um usuário válido "<usuario>"
    E inserir uma senha válida "<senha>"
    E clicar no botão "login"
    Então eu devo ser redirecionado para a tela de checkout

    Exemplos:
      | usuario           | senha   |
      |"teste@gmail.com"  |"Senha@123"|
      |"teste2@gmail.com" |"Senha@123"|
      |"teste3@gmail.com" |"Senha@123"|

  Cenário: Login com dados inválidos
    Quando eu inserir um usuário inválido "usuario@errado.com"
    E inserir uma senha inválida "senhaerrada"
    E clicar no botão "login"
    Então eu devo ver a mensagem de alerta "Usuário ou senha inválidos"


