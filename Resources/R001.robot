*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    ../KeyWords/KeyWords.py
Library    ../KeyWords/locators.py
Library    ../TestData/ReadData.py


*** Variables ***


*** Keywords ***

Fetch Rows Num
    [Arguments]    ${sheetname}
    ${rep}=    fetch_rows    ${sheetname}
    [Return]    ${rep}

Fetch Cell Value
    [Arguments]    ${sheetname}    ${row}    ${col}
    ${rep}=    fetch_cell_data    ${sheetname}    ${row}    ${col}
    [Return]    ${rep}

Read Element Locator
    [Arguments]    ${jsonpath}
    ${result}=    read_locator    ${jsonpath}
    [Return]    ${result}


Start Browser
    Open Browser    http://thetestingworld.com/testings    Chrome
    maximize browser window

Close browser Window
    ${title}=    get title
    log    ${title}
    Close browser


Before Test Suite
    log    Before Test Suite

After Test Suite
    log    After Test Suite

Make New Folders
    [Arguments]    ${folder_name}    ${sub_folder_name}
    create_folder    ${folder_name}
    create_sub_folder    ${sub_folder_name}
    log    Successfully created folders

Add Two Values
    [Arguments]    ${username}    ${password}
    ${result}=    add_two_value    ${username}    ${password}
    log    ${result}
