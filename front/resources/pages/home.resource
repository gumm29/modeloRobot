*** Settings ***
Variables  ../../data/home.yml
Variables  ./mappings/home_mappings.yml
Library    SeleniumLibrary

*** Keywords ***
Escreve texto
    Element Text Should Be  ${banner_mapped}[title]    ${banner}[title]
    Log To Console          ${banner_mapped}[name][0]
    Log To Console          ${banner_mapped}[name][1]