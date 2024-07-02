#language: pt
Funcionalidade: Tela de Cadastro - Checkout
  Para que eu possa concluir minhas compras na EBAC-SHOP
  Como cliente da EBAC-SHOP
  Eu quero concluir meu cadastro para finalizar minha compra

  Contexto:
    Dado que estou na página de cadastro

  Cenário: Cadastro com todos os dados válidos
    Quando eu preencher todos os campos obrigatórios
    E clicar no botão "cadastrar"
    Então o cadastro deve ser concluído com sucesso
    E eu devo ser redirecionado para a página de finalização de compra

  Cenário: Campos obrigatórios não preenchidos
    Quando eu deixar de preencher algum campo obrigatório
    E clicar no botão "cadastrar"
    Então o sistema deve exibir uma mensagem de alerta "Por favor, preencha todos os campos obrigatórios"

  Cenário: E-mail inválido
    Quando eu inserir um e-mail com formato inválido
    E clicar no botão "cadastrar"
    Então o sistema deve exibir uma mensagem de alerta "E-mail inválido"
