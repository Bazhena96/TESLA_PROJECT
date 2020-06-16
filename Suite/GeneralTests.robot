***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
***Test Cases***
User Load Page
    Open and Load
User Select The Market
    Open and Load
    Select The Market
    Close Browser
User Sign Into Account
    Open and Load
    Sign In
    Close Browser
Dismiss Alert
    ${BUTTON_COUNTS} =  GET ELEMENT COUNT  css=.locale-main-header
    Run Keyword if  ${BUTTON_COUNTS}>0  Dismiss Alert 