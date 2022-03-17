*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../Resources/R001.robot
#Documentation    This can be used to start a browser.
Test Setup    Start Browser
Test Teardown    Close Browser Window
#Suite Setup    Before Test Suite
#Suite Teardown    After Test Suite
#Default Tags    DEFT

*** Variables ***

${Browser}    Chrome
${URL}    http://thetestingworld.com/testings

*** Test Cases ***

First Case
    [Tags]    Smoke
    ${username}=    Read Element Locator    register.username_textbox
    ${password}=    Read Element Locator    register.password_textbox
    ${email}=    Read Element Locator    register.email_textbox
    Input Text    name:${username}    Sanaurasif
    Input Text    name:${email}    test@gmail.com
    Input Text    name:${password}    123456

Second Case
    [Tags]    Smoke2
    select radio button    add_type    office