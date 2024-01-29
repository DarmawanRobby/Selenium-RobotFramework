*** Settings ***
Library    Selenium2Library
*** Variables ***
${BROWSER}          Chrome
${APP_URL}          https://www.google.com/

*** Keywords ***
Open Browser App
    Open Browser    ${APP_URL}    ${BROWSER}
    Sleep    5s