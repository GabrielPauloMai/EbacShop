#language: pt
Funcionalidade: Configurar Produto
  Para que eu possa escolher um produto conforme minhas preferências
  Como cliente da EBAC-SHOP
  Eu quero configurar meu produto de acordo com cor, tamanho e quantidade

  Contexto:
    Dado que estou na página de configuração de produto

  Cenário: Selecionar cor, tamanho e quantidade
    Quando eu selecionar a cor "vermelho"
    E selecionar o tamanho "M"
    E selecionar a quantidade "2"
    E clicar no botão "adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho com as opções "vermelho", "M" e "2" unidades


  Esquema do Cenário: Selecionar cor, tamanho e quantidade
    Quando eu selecionar a cor "<cor>"
    E selecionar o tamanho "<tamanho>"
    E selecionar a quantidade "<quantidade>"
    E clicar no botão "adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho com as opções "<cor>", "<tamanho>" e "<quantidade>" unidades

    Exemplos:
      | cor      | tamanho | quantidade |
      | azul     | P       | 1          |
      | verde    | G       | 5          |
      | amarelo  | M       | 10         |


  Cenário: Limpar seleção
    Dado que eu selecionei a cor "azul"
    E selecionei o tamanho "G"
    E selecionei a quantidade "1"
    Quando eu clicar no botão "limpar"
    Então todas as seleções devem ser resetadas para o estado original

  Esquema do Cenário: Limitar quantidade de produtos
    Quando eu selecionar <quantidade> produtos
    Então a quantidade de produtos no carrinho deve ser <estado>
    E a mensagem "<mensagem>" deve ser exibida

    Exemplos:
      | quantidade | estado          | mensagem |
      | 1          | adicionada      |"Produto adicionado ao carrinho" |
      | 0          | não adicionada  |"Quantidade inválida" |
      | 10         | adicionada      |"Produto adicionado ao carrinho" |
      | 11         | não adicionada  |"Quantidade inválida" |
      | 100        | não adicionada  |"Quantidade inválida" |
      |5           | adicionada      |"Produto adicionado ao carrinho" |
