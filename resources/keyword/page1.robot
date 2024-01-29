*** Settings ***
Resource    ../config.robot
Resource    ../variable/page1.robot


*** Keywords ***
search.page
    [Arguments]    ${Kategori}    ${search.value}
    IF    '${Kategori}' == 'Positive'
        Open Browser App
        home.search.form    ${search.value}
    ELSE
        Log    Test
    END

home.search.form
    [Arguments]    ${search.value}
    Wait Until Element Is Visible    @{srch.form}
    Input Text    @{srch.form}    ${search.value}
    Textarea Value Should Be    @{srch.form}    ${search.value}
    Sleep    7s