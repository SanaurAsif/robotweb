*** Settings ***
Library       SeleniumLibrary


*** Variables ***

*** Test Cases ***

TC001

    Open Browser    https://thetestingworld.com/testings/    Chrome
    Input Text    //input[@name="fld_username"]    sanaurasif
    Input Text    //input[@name="fld_email"]    test@gmai.com
    Input Text    //input[@name="fld_password"]    ***
    Click Element    //form[@name="register"]
    Select From List By Value    //select[@name="sex"]    1
    Click Element    //input[@name="add_type"]
    Click Element    //input[@name="terms"]
    Click Element    xpath=(//input)[14]