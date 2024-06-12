*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library    SeleniumLibrary
Library    String
Variables  variables.py

*** Variables ***
${LOGIN URL}      http://www.google.com
${CHROME}         Chrome
${EDGE}           Edge
${FIREFOX}        Firefox
${BROWSER_TYPE}   ${FIREFOX}
${ALL_BROWSER}    ${CHROME}
...  ${FIREFOX}
...  ${EDGE}
${DEVICE}         ["iPhone 4", "iPhone XR", "Nexus 4", "Galaxy S5", "Nokia N9" ,"Surface Duo"]


*** Keywords *** 
Open Browser To Login Page
    ${teste}  Get Variable Value    ${BROWSER_TYPE}

    Log To Console    ${teste}
    IF  $BROWSER_TYPE == "mobile"
        Open Browser    ${LOGIN URL}    ${CHROME}  options=${OPTIONS}
    ELSE
        Open Browser    ${LOGIN URL}    ${BROWSER_TYPE}
    END
    