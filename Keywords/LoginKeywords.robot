*** Settings ***
Library    SeleniumLibrary
Resource  ../Keywords/BasePage.robot
Variables   ../Pages/locatorsPage.py
Variables  ../TestData/testdata.py
Resource   ../Keywords/HomePage.robot

*** Keywords ***
Login
    setUp
    scroll0
    Sleep    4
    Input Text  ${mobilenumber_textbox_XPATH}  ${mob_num}
    Sleep    4
    Input Text  ${password_textbox_XPATH}  ${password}
    Sleep    4
    Click Element  ${login_button_XPATH}
    Sleep    4
    scroll1
    Sleep    4
    Click Element  ${logout_link_XPATH}
    Sleep    4
    teardown