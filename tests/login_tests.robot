*** Settings ***
Documentation     Testes de login no OrangeHRM
Resource          ../resources/LoginPage.resource
Resource          ../resources/AddEmployeePage.resource
Resource          ../variables/config_variables.resource
Resource          ../resources/EmployeeListPage.resource



*** Test Cases ***
Login com sucesso
    [Tags]    login    positivo
    Abrir navegador e acessar sistema
    Preencher login com usuário válido
    Verificar que login foi realizado com sucesso
    Fechar navegador


Cadastro de novo funcionário
    [Tags]    cadastro
    Abrir navegador e acessar sistema
    Preencher login com usuário válido
    Verificar que login foi realizado com sucesso
    Acessar menu Add Employee
    Preencher dados do novo funcionário
    Fechar navegador



Busca de funcionário cadastrado
    [Tags]    busca
    Abrir navegador e acessar sistema
    Preencher login com usuário válido
    Verificar que login foi realizado com sucesso

    Buscar funcionário pelo nome

    Fechar navegador

Login inválido com erro
    [Tags]    login    negativo
    Abrir navegador e acessar sistema
    Preencher login com credenciais inválidas
    Verificar mensagem de erro
    Fechar navegador
