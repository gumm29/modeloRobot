*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library    SeleniumLibrary

Resource  ../resources/pages/home.resource
Resource  ../resources/env.resource


*** Variables ***

# ${LOGIN URL}      http://www.google.com
# ${BROWSER}        Firefox
# ...    # Edge
# ...    # Chrome

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    # Input Username    demo
    # Input Password    mode
    # Submit Credentials
    # Welcome Page Should Be Open
    [Teardown]    Close Browser

# *** Keywords ***
# Open Browser To Login Page
    # Open Browser    ${LOGIN URL}    ${BROWSER}  options=${OPTIONS}
    # Log To Console  ${TESTE}
    # Title Should Be    Login Page

# Input Username
#     [Arguments]    ${username}
#     Input Text    username_field    ${username}

# Input Password
#     [Arguments]    ${password}
#     Input Text    password_field    ${password}

# Submit Credentials
#     Click Button    login_button

# Welcome Page Should Be Open
#     Title Should Be    Welcome Page
