*** Settings ***
Library    SeleniumLibrary
Variables   ../Pages/locatorsPage.py
Variables  ../TestData/testdata.py
Resource   ../Keywords/HomePage.robot

*** Keywords ***
Facebook
    scroll2
    Click Element  ${fb_XPATH}
    Sleep    4
    Input Text  ${fbemail_XPATH}  ${email_mob}
    Sleep    4
    Input Text  ${fbpassword_XPATH}  ${password}
    Sleep    4
    go back
    close browser