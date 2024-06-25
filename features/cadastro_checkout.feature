#language: pt
Funcionalidade: Tela de Cadastro - Checkout
  Para que eu possa concluir minhas compras na EBAC-SHOP
  Como cliente da EBAC-SHOP
  Eu quero concluir meu cadastro para finalizar minha compra

  Contexto:
    Dado que estou na página de cadastro

  Esquema do Cenário: Cadastro com dados válidos e inválidos
    Quando eu preencher <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
    E clicar no botão "cadastrar"
    Então o cadastro deve ser <resultado>
    E eu devo <acao>

    Exemplos:
      | nome      | sobrenome | pais   | endereco                | cidade        | cep        | telefone       | email                          | resultado                 | acao                                                      |
      | João      | Silva     | Brasil | Rua das Flores, 123     | São Paulo     | 12345-678  | (11) 99999-9999| joao.silva@ebac.com.br        | concluído com sucesso    | ser redirecionado para a página de finalização de compra   |
      |           | Silva     | Brasil | Rua das Flores, 123     | São Paulo     | 12345-678  | (11) 99999-9999| joao.silva@ebac.com.br        | inválido                 | ver a mensagem de alerta "Por favor, preencha o campo Nome"   |
      | João      |           | Brasil | Rua das Flores, 123     | São Paulo     | 12345-678  | (11) 99999-9999| joao.silva@ebac.com.br        | inválido                 | ver a mensagem de alerta "Por favor, preencha o campo Sobrenome"   |
      | João      | Silva     |        | Rua das Flores, 123     | São Paulo     | 12345-678  | (11) 99999-9999| joao.silva@ebac.com.br        | inválido                 | ver a mensagem de alerta "Por favor, preencha o campo País"   |
      | João      | Silva     | Brasil |                         | São Paulo     | 12345-678  | (11) 99999-9999| joao.silva@ebac.com.br        | inválido                 | ver a mensagem de alerta "Por favor, preencha o campo Endereço"   |
      | João      | Silva     | Brasil | Rua das Flores, 123     |               | 12345-678  | (11) 99999-9999| joao.silva@ebac.com.br        | inválido                 | ver a mensagem de alerta "Por favor, preencha o campo Cidade"   |
      | João      | Silva     | Brasil | Rua das Flores, 123     | São Paulo     |            | (11) 99999-9999| joao.silva@ebac.com.br        | inválido                 | ver a mensagem de alerta "Por favor, preencha o campo CEP"   |
      | João      | Silva     | Brasil | Rua das Flores, 123     | São Paulo     | 12345-678  |                 | joao.silva@ebac.com.br        | inválido                 | ver a mensagem de alerta "Por favor, preencha o campo Telefone"   |
      | João      | Silva     | Brasil | Rua das Flores, 123     | São Paulo     | 12345-678  | (11) 99999-9999|                              | inválido                 | ver a mensagem de alerta "Por favor, preencha o campo Endereço de e-mail"   |
      | João      | Silva     | Brasil | Rua das Flores, 123     | São Paulo     | 12345-678  | (11) 99999-9999| joao.silva@invalido           | inválido                 | ver a mensagem de alerta "E-mail inválido"                   |

  Esquema do Cenário: Cadastro com campos opcionais
    Quando eu preencher <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
    E preencher os campos opcionais <nome_empresa>, <complemento>
    E clicar no botão "cadastrar"
    Então o cadastro deve ser <resultado>
    E eu devo <acao>

    Exemplos:
      | nome   | sobrenome | pais   | endereco            | cidade        | cep       | telefone      | email                     | nome_empresa | complemento | resultado                 | acao                                                      |
      | Maria  | Lima      | Brasil | Av. Paulista, 1000  | São Paulo     | 01234-567 | (11) 88888-8888 | maria.lima@ebac.com.br    | Empresa X    | Apto 101    | concluído com sucesso    | ser redirecionado para a página de finalização de compra   |
      | Pedro  | Silva     | Brasil | Rua dos Pinheiros, 456 | Florianópolis | 88000-456 | (48) 22222-2222 | pedro.silva@ebac.com.br   |              |            | concluído com sucesso    | ser redirecionado para a página de finalização de compra   |
      | Carla  | Souza     | Brasil | Rua das Palmeiras, 123 | Manaus        | 69000-123 | (92) 11111-1111 | carla.souza@ebac.com.br   | Empresa Y    | Bloco B    | concluído com sucesso    | ser redirecionado para a página de finalização de compra   |
      | Fernanda | Lima    | Brasil | Av. Central, 500    | Fortaleza     | 60000-500 | (85) 00000-0000 | fernanda.lima@ebac.com.br | Empresa Z    | Sala 300   | concluído com sucesso    | ser redirecionado para a página de finalização de compra   |

  Cenário: Cadastro com telefone inválido
    Quando eu preencher todos os campos obrigatórios corretamente
      | Nome     | "João"                |
      | Sobrenome| "Silva"               |
      | País     | "Brasil"              |
      | Endereço | "Rua das Flores, 123" |
      | Cidade   | "São Paulo"           |
      | CEP      | "12345-678"           |
      | Telefone | "invalid"             |
      | E-mail   | "joao.silva@ebac.com.br"|
    E clicar no botão "cadastrar"
    Então eu devo ver a mensagem de erro "Telefone inválido"

  Cenário: Cadastro com CEP inválido
    Quando eu preencher todos os campos obrigatórios corretamente
      | Nome     | "João"                |
      | Sobrenome| "Silva"               |
      | País     | "Brasil"              |
      | Endereço | "Rua das Flores, 123" |
      | Cidade   | "São Paulo"           |
      | CEP      | "invalid"             |
      | Telefone | "(11) 99999-9999"     |
      | E-mail   | "joao.silva@ebac.com.br"|
    E clicar no botão "cadastrar"
    Então eu devo ver a mensagem de erro "CEP inválido"



