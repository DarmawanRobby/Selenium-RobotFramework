*** Settings ***
Resource    ../resources/keyword/page1.robot

Test Template    search.page
Test Teardown    Close Browser

*** Test Cases ***
TC001 - Akses Goggle    Positive    Testing