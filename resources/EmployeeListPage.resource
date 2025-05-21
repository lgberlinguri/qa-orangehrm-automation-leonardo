*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Buscar funcionário pelo nome
    Click Element    xpath=//span[text()="PIM"]
    Wait Until Element Is Visible    xpath=//a[text()="Employee List"]    timeout=10s
    Click Element    xpath=//a[text()="Employee List"]
    Wait Until Element Is Visible    xpath=//input[@placeholder="Type for hints..."]
    Input Text    xpath=//input[@placeholder="Type for hints..."]    Leonardo Gatti
    Click Button  xpath=//button[@type="submit"]
    Wait Until Page Contains    Leonardo Gatti    timeout=10s


