*** Settings ***
Library    SeleniumLibrary
Resource   ../Locators/locators.robot

*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser

Acesso a home page do site aiqfome.com
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${CARROSSEL}

Verifico os itens da tela inicial
    Element Should Be Visible    locator=${CARROSSEL_FILTRO}
    Element Should Be Visible    locator=${IMG_LOGO_AIQFOME}
    Element Should Be Visible    locator=${TITULO_CARROSSEL_FILTRO}
    Element Should Be Visible    locator=${LUPA_PESQUISA}

Verificar se o titulo da pagina se encontra "${TITULO_PAGINA}"
    Title Should Be    title=${TITULO_PAGINA}


Conferir lojas abertas e selecionar restaurante
    Element Should Be Visible    locator=${SECAO_PROMO}    message=Nao existem lojas abertas no momento! Nao sera possivel realizar pedidos, confira os horarios
    Element Should Be Visible    locator=${PRIMEIRO_RESTAURANTE}
    Click Element                locator=${PRIMEIRO_RESTAURANTE}

Escolher um produto disponivel
    Wait Until Element Is Visible    locator=${RESTAURANTE_HEADER}
    Scroll Element Into View         locator=${ITEM_COMPRA_DISPONIVEL}
    Click Element                    locator=${ITEM_COMPRA_DISPONIVEL}
    

Selecionar quantidade "2"
    Sleep                            3
    Wait Until Element Is Visible    locator=${QUANTIDADE_DOIS_COMPRA} 
    Click Element                    locator=${QUANTIDADE_DOIS_COMPRA}
    Capture Page Screenshot
    Click Element                    locator=${BTN_ADD_COMPRA}
    


Conferir carrinho
    Sleep                            3
    Wait Until Element Is Visible    locator=${BTN_ABRIR_TICKET}
    Click Element                    locator=${BTN_ABRIR_TICKET}
    Wait Until Element Is Visible    locator=${TXT_QUANTIDADE_DOIS_COMPRA}
    Wait Until Element Is Visible    locator=${PRECO_ITEM_COMPRA}
    Wait Until Element Is Visible    locator=${VALOR_TOTAL_TICKET}
    Wait Until Element Is Visible    locator=${BTN_ACABEI}

    #Extrair texto
    ${PRECO_UNIDADE}    Get Text        locator=${PRECO_ITEM_COMPRA}
    ${PRECO_TOTAL}      Get Text        locator=${VALOR_TOTAL_TICKET}
    
    #Converter String para Numero
    ${UNIDADE_APENAS_NUMERO}    Evaluate    "${PRECO_UNIDADE}".split(" ")[1].replace(",", ".")
    ${TOTAL_APENAS_NUMERO}      Evaluate    "${PRECO_TOTAL}".split(" ")[1].replace(",", ".")
    Convert To Number    ${UNIDADE_APENAS_NUMERO}
    Convert To Number    ${TOTAL_APENAS_NUMERO}

    #Conferencia de valores e adicao da taxa padrao
    ${TAXA}=     Set Variable    ${2}
    ${TOTAL}    Evaluate    (${UNIDADE_APENAS_NUMERO}*2) + (${TAXA}*2)
    Should Be Equal As Numbers   ${TOTAL_APENAS_NUMERO}     ${TOTAL}
    

Finalizar compra
    Capture Page Screenshot
    Click Element    locator=${BTN_ACABEI} 

Validar popup de login
    Sleep    3
    Wait Until Element Is Visible    locator=${INPUT_EMAIL}
    Wait Until Element Is Visible    locator=${INPUT_SENHA} 
    Wait Until Element Is Visible    locator=${BTN_ENTRAR} 
    Wait Until Element Is Visible    locator=${BTN_ESQUECI_SENHA}


    

    