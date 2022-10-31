*** Settings ***
Library    SeleniumLibrary
Variables   ../Pages/locatorsPage.py
Resource  ../Keywords/BasePage.robot
Variables  ../TestData/testdata.py
Resource   ../Keywords/HomePage.robot

*** Keywords ***
TopbarSearch
    setUp
    scroll0
    Sleep    4
    Input Text  ${mobilenumber_textbox_XPATH}  ${mob_num}
    Sleep    4
    Input Text  ${password_textbox_XPATH}  ${password}
    Sleep    4
    Click Element  ${login_button_XPATH}
    Sleep    4

    Input Text  ${search_Xpath}  ${search}
    Sleep    4

    scroll8
    Click Element  ${viewallresult_XPATH}
    Sleep    10

    scroll10
    Sleep    4

    Click Element  ${clickgreen_XPATH}
    Sleep    4

    Click Element  ${add_XPATH}
    Sleep    4
    teardown


TopUpbar
    setUp
    Click Element  ${facebook_XPATH}
    Sleep    4
    newtab
    Sleep    4

    Click Element  ${twitter_XPATH}
    Sleep    4
    newtab
    Sleep    4

    Click Element  ${pinterest_XPATH}
    Sleep    4
    newtab
    Sleep    4

    Click Element  ${Linkedin_XPATH}
    Sleep    4
    newtab
    Sleep    4

    Click Element  ${telegram_XPATH}
    Sleep    4
    newtab
    Sleep    4
    teardown

TopMiddlebar
    setUp
    mouse over  XPATH: //div[@class='whb-flex-row whb-header-bottom-inner']//span[@class='nav-link-text'][normalize-space()='Blog']
    Sleep    4

    Click Element  ${health_XPATH}
    Sleep    4
    scroll4
    Sleep    4
    GO BACK

    mouse over  XPATH: //div[@class='whb-flex-row whb-header-bottom-inner']//span[@class='nav-link-text'][normalize-space()='Blog']
    Sleep    4

    Click Element  ${recipe_XPATH}
    Sleep    10

    scroll10
    Sleep    5
    Click Element  ${chickenkarhai_XPATH}
    Sleep    10

    scroll11

    Input Text  ${comment_XPATH}  ${comment}
    Sleep    4
    Input Text  ${name_XPATH}  ${name}
    Sleep    4
    Input Text  ${email_XPATH}  ${Email}
    Sleep    4
    Input Text  ${website_XPATH}  ${website}
    Sleep    4
    Click Element  ${clickmark_XPATH}

    teardown



