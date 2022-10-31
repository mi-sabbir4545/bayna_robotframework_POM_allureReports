*** Settings ***
Library    SeleniumLibrary
Resource  ../Keywords/BasePage.robot
Variables   ../Pages/locatorsPage.py
Variables  ../TestData/testdata.py
Resource   ../Keywords/HomePage.robot

*** Keywords ***
Lostpassword
    setUp
    scroll0
    Sleep    4
    Click Element  ${lostpass_XPATH}
    Sleep    4
    scroll12
    Sleep    4
    Input Text  ${lostpassemail_XPATH}  ${mob_num}
    Sleep    4
    go back
    teardown