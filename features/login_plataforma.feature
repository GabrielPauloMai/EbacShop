#language: pt
Funcionalidade: Login na Plataforma
  Para que eu possa acessar minha conta na EBAC-SHOP
  Como cliente da EBAC-SHOP
  Eu quero fazer o login na plataforma para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login

  Cenário: Login bem-sucedido
    Quando eu inserir um usuário e uma senha válidos
    E clicar no botão "login"
    Então eu devo ser redirecionado para a tela de checkout

  Esquema do Cenário: Login bem-sucedido com múltiplos usuários
    Quando eu inserir um usuário "<usuario>" e uma senha "<senha>" válidos
    E clicar no botão "login"
    Então eu devo ser redirecionado para a tela de checkout

    Exemplos:
      | usuario           | senha       |
      | teste@gmail.com   | Senha@123   |
      | teste2@gmail.com  | Senha@123   |
      | teste3@gmail.com  | Senha@123   |

  Cenário: Login com dados inválidos
    Quando eu inserir um usuário ou senha inválidos
    E clicar no botão "login"
    Então eu devo ver a mensagem de alerta "Usuário ou senha inválidos"
