*** Settings ***
Resource    ../../Resources/R001.robot


*** Variables ***

*** Test Cases ***

Test Case in BDD
    Given Start Browser
    When Make New Folders    try    ok
    Then Add Two Values    asif    1234