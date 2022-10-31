*** Settings ***
Library    SeleniumLibrary
Resource  ../Keywords/BasePage.robot
Variables   ../Pages/locatorsPage.py
Variables  ../TestData/testdata.py
Resource   ../Keywords/HomePage.robot


*** Keywords ***
LeftbarOrder
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
    Click Element  ${orders_link_XPATH}
    Sleep    4

    scroll2
    Sleep    4
    Click Element  ${view_link_XPATH}
    Sleep    4

    scroll4
    Sleep    4

    go back
    Sleep    4
    Click Element  ${invoice_XPATH}
    Sleep    4
    newtab
    Sleep    4
    teardown

LeftbarDownload
    setUp
    scroll0    #scroll to facebbok
    Sleep    4
    Input Text  ${mobilenumber_textbox_XPATH}  ${mob_num}
    Sleep    4
    Input Text  ${password_textbox_XPATH}  ${password}
    Sleep    4
    Click Element  ${login_button_XPATH}
    Sleep    4

    Click Element  ${dashboard_link_XPATH}
    Sleep    4

    scroll1   #scroll to logout
    Sleep    4
    Click Element  ${Downloads_XPATH}
    Sleep    4

    Click Element  ${Browse_link_XPATH}
    Sleep    10

    scroll10
    Sleep    4
    Click Element  ${cartclick_link_XPATH}
    Sleep    4
    scroll3
    Sleep    4
    Click Element  ${addcart_XPATH}
    Sleep    4
    teardown


LeftbarAddresses
    setUp
    scroll0    #scroll to facebbok
    Sleep    4
    Input Text  ${mobilenumber_textbox_XPATH}  ${mob_num}
    Sleep    4
    Input Text  ${password_textbox_XPATH}  ${password}
    Sleep    4
    Click Element  ${login_button_XPATH}
    Sleep    4

    Click Element  ${dashboard_link_XPATH}
    Sleep    4

    scroll1   #scroll to logout
    Sleep    4
    Click Element  ${Addresses_XPATH}
    Sleep    4

    scroll4
    Sleep    4
    teardown


LeftbarAccountdeatails
    setUp
    scroll0    #scroll to facebbok
    Sleep    4
    Input Text  ${mobilenumber_textbox_XPATH}  ${mob_num}
    Sleep    4
    Input Text  ${password_textbox_XPATH}  ${password}
    Sleep    4
    Click Element  ${login_button_XPATH}
    Sleep    4

    Click Element  ${Account_XPATH}
    Sleep    4

    scroll5
    Sleep    4
    Clear Element Text  XPATH: //input[@id='username']
    Sleep    4
    Input Text  ${accmobilenum_XPATH}  ${moblie}
    Sleep    4

    Clear Element Text  XPATH: //input[@id='account_first_name']
    Sleep    4
    Input Text  ${accfirstname_XPATH}  ${fst_name}
    Sleep    4

    Clear Element Text  XPATH: //input[@id='account_last_name']
    Sleep    4
    Input Text  ${acclastname_XPATH}  ${lastname}
    Sleep    4

    Clear Element Text  XPATH:// input[ @ id = 'account_display_name']
    Input Text  ${accdisplayname_XPATH}  ${displayname}
    Sleep    4

    Clear Element Text  XPATH: //input[@id='account_email']
    Sleep    4
    Input Text  ${accemailadd_XPATH}  ${email}
    Sleep    4

    scroll6
    Clear Element Text  XPATH: //input[@id='password_current']
    Sleep    4
    Input Text  ${acccurrpass_XPATH}  ${currentpass}
    Sleep    4

    Clear Element Text  XPATH://input[@id='password_1']
    Sleep    4
    Input Text  ${accnewpass_XPATH}  ${newpass}
    Sleep    4

    Clear Element Text  XPATH://input[@id='password_2']
    Sleep    4
    Input Text  ${accconfirmpass_XPATH}  ${confirmpass}
    Sleep    4

    scroll4
    Sleep    4
    teardown
