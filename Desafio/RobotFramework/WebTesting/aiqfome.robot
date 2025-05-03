*** Settings ***
Documentation     Validacao de acesso e compra de itens
Resource          Gherkin/aiqfome_gherkin_bdd.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

*** Test Cases ***
Caso de teste 01 - Acesso ao site
    [Documentation]       Este teste ira verificar que o acesso ao site foi realizado com sucesso
    [Tags]                home
    Dado que acesso a home page do site aiqfome.com

Caso de teste 02 - Comprar na quantidade 2 um item disponivel em loja na promocao
    [Documentation]       Este teste ira validar a compra de um item disponivel, em dupla quantidade, de um restaurante participante da promocao
    [Tags]                compra promocao
    Dado que acesso a home page do site aiqfome.com
    Quando seleciono restaurante e faco uma compra de 2 itens
    Entao valido o popup de login
