*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../Resources/R001.robot
Documentation    This can be used to start a browser.
Test Setup    Start Browser
Test Teardown    Close Browser Window

*** Variables ***

${Browser}    Chrome
${URL}    http://thetestingworld.com/testings


*** Test Cases ***

First Case
    [Tags]    Smoke
    Input Text    name:fld_username    Sanaurasif
    Input Text    name:fld_email    test@gmail.com
    Input Text    name:fld_password    123456

Second Case
    [Tags]    Regret
    select radio button    add_type    office