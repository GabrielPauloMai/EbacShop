from pytest_bdd import scenario, given, when, then


@given("que estou na página de login")
def step_impl():
    print(u'STEP: Dado que estou na página de login')

    raise NotImplementedError(u'STEP: Dado que estou na página de login')


@given('eu inserir um usuário válido "usuario@exemplo.com"')
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu inserir um usuário válido "usuario@exemplo.com"')


@given('inserir uma senha válida "senha123"')
def step_impl():
    raise NotImplementedError(u'STEP: E inserir uma senha válida "senha123"')


@given('clicar no botão "login"')
def step_impl():
    raise NotImplementedError(u'STEP: E clicar no botão "login"')


@given("eu devo ser redirecionado para a tela de checkout")
def step_impl():
    raise NotImplementedError(u'STEP: Então eu devo ser redirecionado para a tela de checkout')


@given('eu inserir um usuário inválido "usuario@errado.com"')
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu inserir um usuário inválido "usuario@errado.com"')


@given('inserir uma senha inválida "senhaerrada"')
def step_impl():
    raise NotImplementedError(u'STEP: E inserir uma senha inválida "senhaerrada"')


@given('eu devo ver a mensagem de alerta "Usuário ou senha inválidos"')
def step_impl():
    raise NotImplementedError(u'STEP: Então eu devo ver a mensagem de alerta "Usuário ou senha inválidos"')


@given('eu inserir um usuário válido "<usuario>"')
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu inserir um usuário válido "<usuario>"')


@given('inserir uma senha válida "<senha>"')
def step_impl():
    raise NotImplementedError(u'STEP: E inserir uma senha válida "<senha>"')