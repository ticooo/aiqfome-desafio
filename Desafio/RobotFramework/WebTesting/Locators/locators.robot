*** Variables ***

#HOME
${URL}                          https://aiqfome.com/restaurantes/tupiratins-TO
${CARROSSEL}                    //div[@class="carousel-inner"]
${CARROSSEL_FILTRO}             //ul[@id="carousel-filtro"]
${IMG_LOGO_AIQFOME}             //img[@id="titulo-aiqfome"]
${TITULO_CARROSSEL_FILTRO}      //span[contains(text(), 'o que vai ser hoje, hein? ')]
${LUPA_PESQUISA}                //input[@placeholder="O que você tá procurando?"]

#POPUP LOGIN
${INPUT_EMAIL}                  //input[@id="login"]
${INPUT_SENHA}                  //input[@id="senha"]
${BTN_ENTRAR}                   //input[@id="btn-login"]
${BTN_ESQUECI_SENHA}            //a[contains(text(), "putz, não lembro minha senha :(")]

#SECAO PROMO
${SECAO_PROMO}                  //span[contains(text(), 'promo')]
${PRIMEIRO_RESTAURANTE}         //div[@id="restaurantes-secao-2"]/div/a[1]

#HOME RESTAURANTE
${RESTAURANTE_HEADER}           //div[@id="restaurant-header"]
${REPORT_BUG}                   //span[contains(text(), "acha que tem algo de errado por aqui?")]
${ITEM_COMPRA_DISPONIVEL}       //div[@class="row nome-preco-item"]/div/div/h3[@onclick][1]

#POPUP COMPRA
${QUANTIDADE_DOIS_COMPRA}       //label[@for="qtd-2"]
${BTN_ADD_COMPRA}               //a[@id="addi_btn"]

#POPUP TICKET
${BTN_ABRIR_TICKET}             //div[@id="ticket-btn"]
${TXT_QUANTIDADE_DOIS_COMPRA}   //div[@id="itens-no-ticket"]/div/span[contains(text(), "2x")]
${PRECO_ITEM_COMPRA}            //div[@id="itens-no-ticket"]/div/span[contains(@class, "preco-ticket")]
${VALOR_TOTAL_TICKET}           //span[@id="ticket-total"]
${BTN_ACABEI}                   //a[@id="ticket-add-btn" and contains(text(), 'ACABEI')]