*** Settings ***
Library     SeleniumLibrary
Resource    ../variables/config_variables.resource

*** Keywords ***

Abrir navegador e acessar sistema
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    name=username    timeout=30s
    Sleep    2s

Preencher login com usuário válido
    Input Text    name=username    ${USER}
    Input Text    name=password    ${PASSWORD}
    Click Button  xpath=//button[@type="submit"]

Verificar que login foi realizado com sucesso
    Wait Until Page Contains Element    xpath=//h6[text()="Dashboard"]

Fechar navegador
    Close Browser

Preencher login com credenciais inválidas
    Input Text    name=username    usuarioerrado
    Input Text    name=password    senhaerrada
    Click Button  xpath=//button[@type="submit"]

Verificar mensagem de erro
    Wait Until Page Contains    Invalid credentials
