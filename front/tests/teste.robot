*** Settings ***
Documentation     Teste de documentacao
Library    SeleniumLibrary

Resource  ../resources/pages/home.resource
Resource  ../resources/env.resource

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Escreve texto
    [Teardown]    Close Browser

