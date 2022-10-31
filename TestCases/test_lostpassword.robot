*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/LostpasswordKeywords.robot
Resource  ../Keywords/BasePage.robot

*** Test Cases ***
lostpassword
    Lostpassword