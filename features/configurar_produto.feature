#language: pt
Funcionalidade: Configurar Produto
  Para que eu possa escolher um produto conforme minhas preferências
  Como cliente da EBAC-SHOP
  Eu quero configurar meu produto de acordo com cor, tamanho e quantidade

  Contexto:
    Dado que estou na página de configuração de produto

  Cenário: Selecionar cor, tamanho e quantidade
    Quando eu selecionar cor, tamanho e quantidade
    E clicar no botão "adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho com as opções selecionadas

  Esquema do Cenário: Selecionar cor, tamanho e quantidade
    Quando eu selecionar cor "<cor>", tamanho "<tamanho>" e quantidade "<quantidade>"
    E clicar no botão "adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho com as opções "<cor>", "<tamanho>" e "<quantidade>"

    Exemplos:
      | cor     | tamanho | quantidade |
      | azul    | P       | 1          |
      | verde   | G       | 5          |
      | amarelo | M       | 10         |

  Cenário: Limpar seleção
    Dado que eu fiz seleções de cor, tamanho e quantidade
    Quando eu clicar no botão "limpar"
    Então todas as seleções devem ser resetadas para o estado original

  Esquema do Cenário: Limitar quantidade de produtos
    Quando eu selecionar <quantidade> produtos
    Então a quantidade de produtos no carrinho deve ser <estado>
    E a mensagem "<mensagem>" deve ser exibida

    Exemplos:
      | quantidade | estado         | mensagem                         |
      | 1          | adicionada     | "Produto adicionado ao carrinho" |
      | 0          | não adicionada | "Quantidade inválida"            |
      | 10         | adicionada     | "Produto adicionado ao carrinho" |
      | 11         | não adicionada | "Quantidade inválida"            |
      | 100        | não adicionada | "Quantidade inválida"            |
      | 5          | adicionada     | "Produto adicionado ao carrinho" |
