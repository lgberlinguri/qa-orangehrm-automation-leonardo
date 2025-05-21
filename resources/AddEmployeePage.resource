*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Acessar menu Add Employee
    Click Element    xpath=//span[text()="PIM"]
    Wait Until Element Is Visible    xpath=//a[text()="Add Employee"]    timeout=10s
    Click Element    xpath=//a[text()="Add Employee"]
    Wait Until Element Is Visible    name=firstName    timeout=10s

Preencher dados do novo funcionário
    Input Text    name=firstName    Leonardo
    Input Text    name=lastName     Gatti
    Click Button  xpath=//button[@type="submit"]
    Wait Until Page Contains Element    xpath=//h6[text()="Personal Details"]