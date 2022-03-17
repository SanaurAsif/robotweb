*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../Resources/R001.robot

*** Variables ***
${url}    http://thetestingworld.com/testings
${browser}    chrome

*** Test Cases ***
First Case
    Add Two Values    sanurasif    123456







#    ${el_cnt}=    get element count    xpath://*[@class="field"]
#    log   ${el_cnt}
#    ${attr}=    get element attribute    name:fld_email    class
#    log    ${attr}
#    ${html}=    get source
#    log    ${html}
#    ${title}=    get title
#    log    ${title}
#    ${speed}=    get selenium speed
#    log    ${speed}
#    ${value}=    get value    xpath://input[@value="Sign up"]
#    log    ${value}
#    ${text}=    get text    xpath://*[@id="tab-content1"]/form/div/em/a
#    log    ${text}
#
#    select from list by index    xpath://select[@name="sex"]    1
#    ${val}=    get selected list value    xpath://select[@name="sex"]
#    log    ${val}
#    ${label}=    get selected list label    xpath://select[@name="sex"]
#    log    ${label}
#    ${labels}=    get list items    xpath://select[@name="sex"]
#    log    ${labels}

