*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
Open and Load
    Open Browser  https://www.tesla.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
Load Page And Maximize Browser Window
    Open and Load
    Maximize Browser Window
Select The Market
    Wait And Click  css=#locale-modal-close
Sign In
    [Arguments]  ${user email}  ${user password}
    Wait Until Page Contains Element  css=.tds-menu-header-nav--primary_right > li:nth-child(2) > a:nth-child(1)
    Mouse Down  css=.tds-menu-header-nav--primary_right > li:nth-child(2) > a:nth-child(1)
    Wait And Click  css=.tds-menu-header-nav--primary_right > li:nth-child(2) > a:nth-child(1)
    Wait And Click  css=#form-input-identity
    Input Text  css=#form-input-identity  ${user email}
    Input Password  css=#form-input-credential  ${user password}
    Wait And Click  css=#form-submit-continue
Close Alert
    Wait And Click  css=#locale-modal-close
Search The Product
    [Arguments]  ${product name}
    Wait And Click  css=.tds-menu-header-nav--primary_right > li:nth-child(1)
    Wait And Click  css=#searchform
    Wait And Click  css=#searchTerm
    Input Text  css=#searchTerm  ${product name}
    Press Keys  css=#searchform > label > i  ENTER
Verify That Search Completed
    Wait Until Page contains  Results for
User Select One Of The Results
    Wait And Click  css=li.product-tile__item:nth-child(1) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1)
Add Product
    Wait And Click  css=section.product-submit:nth-child(5) > div:nth-child(1) > input:nth-child(2)
Choose The Product Size
    Wait And Click  css=div.product-form:nth-child(2) > div:nth-child(1) > fieldset:nth-child(1) > div:nth-child(2) > div:nth-child(1) > label:nth-child(2)
Verify That Product Add To The Cart
    Wait Until Page Contains Element   css=.proceed-button
Dismiss Alert
    ${button count} =  GET ELEMENT COUNT  css=.locale-main-header
    Run Keyword if  ${button count}>0  Close Alert
    
