# Desafio aiqfome! 🎉

Este é um repositório que compõe uma das etapas do desafio aiqfome! Foi feito em Robot e para isso é necessário seguir algumas etapas.

## Instalação

Primeiro é necessário possuir [Python](https://www.python.org/downloads/) instalado. Siga o wizard e marque a caixa que configurará as variáveis de ambiente!
Para ter certeza que seu Python está instalado corretamente, abra seu terminal como administrador e confira a versão:
```bash
python --version
```

Também será necessário a instalação do Robot Framework e suas Libraries, tal como Selenium:

Robot:
```bash
pip install robotframework
```
Selenium:
```bash
pip install --upgrade robotframework-seleniumlibrary
```

Neste repositório o Google Chrome foi utilizado como padrão, então se faz necessário a instalação do [Chrome Driver](https://googlechromelabs.github.io/chrome-for-testing/). Selecione na coluna chromedriver o item de acordo com sua plataforma, faça download e extraia os arquivos dentro da pasta Scripts do Python.
Normalmente pode ser encontrada em **User/NomeUser/AppData/Programs/Python/Python313/Scripts**.

Para conferir a instalação do Robot e do ChromeDriver, basta utilizar dos mesmos comandos!
```bash
robot --version
```
```bash
chromedriver --version
```

## Documentações

Esta é a documentação do [Robot](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html) que está sendo utilizada.
E esta é a documentação do [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html).

## Execução

Para executar, basta importar o projeto para sua IDE de preferencia e executar o *aiqfome.robot*. Caso não possua, é possível executa-lo estando dentro do projeto em um terminal Python e executar:
```bash
robot aiqfome.robot
```


Serão executados 2 casos de testes, o primeiro é verificar um acesso simples ao site e o segundo realizará o fluxo pedido - Entrando no site, selecionando um restaurante, colocando alguns itens no carrinho e validar a compra no carrinho.
**ATENÇÃO:** Os restaurantes possuem horário de atendimento, com isso foi colocado uma tratativa dentro do código para lhe informar caso os restaurantes estejam fechados!

Obrigado! 🎉
