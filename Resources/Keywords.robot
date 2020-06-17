***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

***Keywords***
Open and Load
    Open Browser  https://www.tesla.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Select The Market
    Wait Until Page Contains Element  css=#locale-modal-close
    Click Element  css=#locale-modal-close
Sign In
    Wait Until Page Contains Element  css=.tds-menu-header-nav--primary_right > li:nth-child(2) > a:nth-child(1)
    Mouse Down  css=.tds-menu-header-nav--primary_right > li:nth-child(2) > a:nth-child(1)
    Click Element  css=.tds-menu-header-nav--primary_right > li:nth-child(2) > a:nth-child(1)
    Click Element  css=#email
    Input Text  css=#email  ${USER_EMAIL}
    Wait Until Page Contains Element  css=#submit-button
    Click Element  css=#submit-button
    Wait Until Page Contains Element  css=#form-input-credential
    Input Password  css=#form-input-credential   ${USER_PASSWORD}
    Wait Until Page Contains Element  css=#submit-button
    Click Element  css=#submit-button
Dismiss Alert
    Wait Until Page Contains Element  css=#locale-modal-close
    Click Element  css=#locale-modal-close
    
