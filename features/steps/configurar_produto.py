from pytest_bdd import scenario, given, when, then


@given("que estou na página de configuração de produto")
def step_impl():
    raise NotImplementedError(u'STEP: Dado que estou na página de configuração de produto')


@given('eu selecionar a cor "vermelho"')
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu selecionar a cor "vermelho"')


@given('selecionar o tamanho "M"')
def step_impl():
    raise NotImplementedError(u'STEP: E selecionar o tamanho "M"')


@given('selecionar a quantidade "2"')
def step_impl():
    raise NotImplementedError(u'STEP: E selecionar a quantidade "2"')


@given('clicar no botão "adicionar ao carrinho"')
def step_impl():
    raise NotImplementedError(u'STEP: E clicar no botão "adicionar ao carrinho"')


@given('o produto deve ser adicionado ao carrinho com as opções "vermelho", "M" e "2" unidades')
def step_impl():
    raise NotImplementedError(
        u'STEP: Então o produto deve ser adicionado ao carrinho com as opções "vermelho", "M" e "2" unidades')


@given('que eu selecionei a cor "azul"')
def step_impl():
    raise NotImplementedError(u'STEP: Dado que eu selecionei a cor "azul"')


@given('selecionei o tamanho "G"')
def step_impl():
    raise NotImplementedError(u'STEP: E selecionei o tamanho "G"')


@given('selecionei a quantidade "1"')
def step_impl():
    raise NotImplementedError(u'STEP: E selecionei a quantidade "1"')


@given('eu clicar no botão "limpar"')
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu clicar no botão "limpar"')


@given("todas as seleções devem ser resetadas para o estado original")
def step_impl():
    raise NotImplementedError(u'STEP: Então todas as seleções devem ser resetadas para o estado original')


@given("eu selecionar <quantidade> produtos")
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu selecionar <quantidade> produtos')


@given("a quantidade de produtos no carrinho deve ser <estado>")
def step_impl():
    raise NotImplementedError(u'STEP: Então a quantidade de produtos no carrinho deve ser <estado>')


@given('eu selecionar a cor "<cor>"')
def step_impl():
    raise NotImplementedError(u'STEP: Quando eu selecionar a cor "<cor>"')


@given('selecionar o tamanho "<tamanho>"')
def step_impl():
    raise NotImplementedError(u'STEP: E selecionar o tamanho "<tamanho>"')


@given('selecionar a quantidade "<quantidade>"')
def step_impl():
    raise NotImplementedError(u'STEP: E selecionar a quantidade "<quantidade>"')


@given('o produto deve ser adicionado ao carrinho com as opções "<cor>", "<tamanho>" e "<quantidade>" unidades')
def step_impl():
    raise NotImplementedError(
        u'STEP: Então o produto deve ser adicionado ao carrinho com as opções "<cor>", "<tamanho>" e "<quantidade>" unidades')


@given('a mensagem "<mensagem>" deve ser exibida')
def step_impl():
    raise NotImplementedError(u'STEP: E a mensagem "<mensagem>" deve ser exibida')