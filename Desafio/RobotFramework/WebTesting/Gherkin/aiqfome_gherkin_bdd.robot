*** Settings ***
Documentation     Escrita do Gherkin BDD, com o objetivo de centralizar o conteudo e facilitar a leitura e construcao das features
Resource    ./aiqfome_steps.robot

*** Keywords ***

Dado que acesso a home page do site aiqfome.com
    Acesso a home page do site aiqfome.com
    Verifico os itens da tela inicial
    Verificar se o titulo da pagina se encontra "aiqfome - restaurantes em Tupiratins"

Quando seleciono restaurante e faco uma compra de 2 itens
    Conferir lojas abertas e selecionar restaurante
    Escolher um produto disponivel
    Selecionar quantidade "2"
    Conferir carrinho
    Finalizar compra

Entao valido o popup de login
    Validar popup de login

