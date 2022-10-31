*** Settings ***
Library    SeleniumLibrary
Resource  ../Keywords/BasePage.robot
Variables   ../Pages/locatorsPage.py
Variables  ../TestData/testdata.py
Resource   ../Keywords/HomePage.robot

*** Keywords ***
Register
    setUp
    scroll0
    Sleep    4
    Click Element  ${register_XPATH}
    Sleep    4
    scroll13
    Sleep    4
    Input Text  ${regusername_ID}  ${username}
    Sleep    4
    Input Text  ${regfirstname_ID}  ${firstname}
    Sleep    4
    Input Text  ${regemailmobile_ID}  ${email_mob}
    Sleep    4
    Input Text  ${regmobile_ID}  ${mob_num}
    Sleep    4
    Input Text  ${regpassword_ID}  ${password}
    Sleep    4
    Click Element  ${reglogin_XPATH}
    Sleep    4
    teardown

