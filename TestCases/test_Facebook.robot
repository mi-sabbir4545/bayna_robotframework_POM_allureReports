*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/FacebookKeywords.robot
Resource  ../Keywords/BasePage.robot


*** Test Cases ***
FacebookTest
    setup
    Facebook
    teardown