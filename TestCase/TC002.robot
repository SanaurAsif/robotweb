*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/R001.robot

*** Variables ***
${var1}    https://www.thetestingworld.com/

*** Test Cases ***

TC001
    open browser    ${var1}    chrome
    maximize browser window
    ${row}=    fetch rows num    Sheet1
    FOR    ${i}    IN RANGE    1    ${row}+1
        ${username}=    Fetch Cell Value    Sheet1    ${i}    1
        ${password}=    Fetch Cell Value    Sheet1    ${i}    2
        click element    xpath://a[contains(text(),"Login")]
        input text    id:username    ${username}
        input text    id:password    ${password}
        click button    xpath://button[@type="submit"]
        sleep    5 seconds
    END
