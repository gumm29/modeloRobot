*** Settings ***
Variables  ../../data/home.yml
Library    SeleniumLibrary

*** Variables ***
${imput}  //textarea

*** Keywords ***
Escreve texto
    Input Text    ${imput}    ${nome}    