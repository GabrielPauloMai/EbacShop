from pytest_bdd import scenario, given, when, then


@given("que estou na página de cadastro")
def step_impl():
    raise NotImplementedError(u'STEP: Dado que estou na página de cadastro')





@given('clicar no botão "cadastrar"')
def step_impl():
    raise NotImplementedError(u'STEP: E clicar no botão "cadastrar"')


@given("o cadastro deve ser concluído com sucesso")
def step_impl():
    raise NotImplementedError(u'STEP: Então o cadastro deve ser concluído com sucesso')


@given("eu devo ser redirecionado para a página de finalização de compra")
def step_impl():
    raise NotImplementedError(u'STEP: E eu devo ser redirecionado para a página de finalização de compra')


@given('eu inserir um e-mail inválido "usuario@invalido"')
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu inserir um e-mail inválido "usuario@invalido"')


@given('eu devo ver a mensagem de erro "E-mail inválido"')
def step_impl():
    raise NotImplementedError(u'STEP: Então eu devo ver a mensagem de erro "E-mail inválido"')


@given("eu não preencher todos os campos obrigatórios")
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu não preencher todos os campos obrigatórios')


@given('eu devo ver a mensagem de alerta "Por favor, preencha todos os campos obrigatórios"')
def step_impl():
    raise NotImplementedError(
        u'STEP: Então eu devo ver a mensagem de alerta "Por favor, preencha todos os campos obrigatórios"')


@given("eu inserir <nome>, <email> e <senha>")
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu inserir <nome>, <email> e <senha>')


@given('clicar no botão "cadastrar"')
def step_impl():
    raise NotImplementedError(u'STEP: E clicar no botão "cadastrar"')


@given("eu preencher <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>")
def step_impl():
    raise NotImplementedError(
        u'STEP: Quando eu preencher <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>')


@given("preencher os campos opcionais <nome_empresa>, <complemento>")
def step_impl():
    raise NotImplementedError(u'STEP: E preencher os campos opcionais <nome_empresa>, <complemento>')


@given("eu preencher todos os campos obrigatórios corretamente")
def step_impl():
    raise NotImplementedError(u"""STEP: Quando eu preencher todos os campos obrigatórios corretamente
                              | Nome | "João" |
                              | Sobrenome | "Silva" |
                              | País | "Brasil" |
                              | Endereço | "Rua das Flores, 123" |
                              | Cidade | "São Paulo" |
                              | CEP | "12345-678" |
                              | Telefone | "invalid" |
                              | E - mail | "joao.silva@ebac.com.br" | """)


@given('eu devo ver a mensagem de erro "Telefone inválido"')
def step_impl():
    raise NotImplementedError(u'STEP: Então eu devo ver a mensagem de erro "Telefone inválido"')


@given('eu devo ver a mensagem de erro "Telefone inválido"')
def step_impl():
    raise NotImplementedError(u'STEP: Então eu devo ver a mensagem de erro "Telefone inválido"')


@given('eu devo ver a mensagem de erro "CEP inválido"')
def step_impl():
    raise NotImplementedError(u'STEP: Então eu devo ver a mensagem de erro "CEP inválido"')