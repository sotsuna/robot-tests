*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}              chrome
${URL}                  https://demo.mksolutions.com.br/mk/login/?sys=MK0
${USUARIO}              marco.kist
${CAMPO_USUARIO}        xpath=/html/body/div[1]/div[2]/form/input[2]
${SENHA}                Mart0123!
${CAMPO_SENHA}          xpath=/html/body/div[1]/div[2]/form/input[3]
${BOTAO_ENTRAR}         xpath=/html/body/div[1]/div[2]/form/button
${FRAME_MAINSYSTEM}     mainsystem
${FRAME_MAINFORM}       xpath=/html/body/iframe
${CHECK_HOME}           css:white-space: nowrap; text-decoration: none; text-align: center; cursor: pointer; background-color: rgb(255, 255, 255);
${BUTTON_WORKSPACE}     xpath=/html/body/form/div/div[3]/div[1]/div/ul/li[4]/a
${CHECK_WORKSPACE}      xpath=/html/body/form/div/div[4]
${FRAME_WORKSPACE}      name:URLFrame5275875
*** Keywords ***

#### CENARIO 01: Logar no sistema
#### DADO
Que estou na tela de login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    MK Solutions
    Sleep    2s
#### QUANDO
Preencho o campo "Usuário" com "${USUARIO}"
    Input Text    ${CAMPO_USUARIO}    ${USUARIO}
#### E
Preencho o campo "Senha" com "${SENHA}"
    Input Text    ${CAMPO_SENHA}    ${SENHA}
Clico no botão "Entrar"
    Click Button    ${BOTAO_ENTRAR}
#### ENTÃO
Devo ver a tela inicial do sistema
    Select Frame    ${FRAME_MAINSYSTEM}
    Select Frame    ${FRAME_MAINFORM}
    # Select Frame    ${FRAME_MAINFORM}
    Element Should Be Visible    ${CHECK_HOME}
    Sleep    2s
# #### CENARIO 02: Entrar no submenu Workspace
# #### DADO
# Que estou na tela inicial do sistema
#     Select Frame    ${FRAME_MAINSYSTEM}
#     Select Frame    ${FRAME_MAINFORM}
# #### QUANDO
# Clico na moeda do submenu "Workspace"
#     Click Element    ${BUTTON_WORKSPACE}
# Espero a tela carregar
#     Sleep    2s
# #### ENTÃO
# Devo ver a tela HOME do Workspace
#     Select Frame    ${FRAME_MAINSYSTEM}
#     Select Frame    ${FRAME_MAINFORM}
#     Select Frame    ${FRAME_WORKSPACE}
#     Select Frame    ${FRAME_MAINFORM}
#     Element Should Be Visible    ${CHECK_WORKSPACE}
Fechar Navegador
    Close All Browsers