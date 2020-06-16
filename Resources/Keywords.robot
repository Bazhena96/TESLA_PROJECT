***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

***Keywords***
Open and Load
    Open Browser    chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Select The Market
    Wait Until Page Contains Element  css=li.i18n-en_ca:nth-child(2) > a:nth-child(2)
    Click Element  css=li.i18n-en_ca:nth-child(2) > a:nth-child(2)
    
