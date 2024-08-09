*** Settings ***
Resource         ResourceBDD.robot    
Resource         BDDpt-br.robot    
Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário 01: Logar no sistema
    Dado que estou na tela de login
    Quando preencho o campo "Usuário" com "${USUARIO}"
    E preencho o campo "Senha" com "${SENHA}"
    E clico no botão "Entrar"
    Entao devo ver a tela inicial do sistema

# Cenário 02: Entrar no submenu Workspace
#     Dado que estou na tela inicial do sistema
#     Quando clico na moeda do submenu "Workspace"
#     E espero a tela carregar
#     Entao devo ver a tela HOME do Workspace
