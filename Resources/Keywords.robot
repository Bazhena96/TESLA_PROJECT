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
    Click Element  css=#form-input-identity
    Input Text  css=#form-input-identity  ${USER_EMAIL}
    Input Password  css=#form-input-credential   ${USER_PASSWORD}
    Wait Until Page Contains Element  css=#form-submit-continue
    Click Element  css=#form-submit-continue
Close Alert
    Wait Until Page Contains Element  css=#locale-modal-close
    Click Element  css=#locale-modal-close
Search The Product
    Wait Until Page Contains Element  css=li.tds-header-nav--list_item_last:nth-child(18) > ol:nth-child(1) > li:nth-child(1) > a:nth-child(1)
    Click Element  css=li.tds-header-nav--list_item_last:nth-child(18) > ol:nth-child(1) > li:nth-child(1) > a:nth-child(1)
    Wait Until Page Contains Element  css=#tds-header-main > div > div > label.mobile-view > span
    Click Element  css=#tds-header-main > div > div > label.mobile-view > span
    Wait Until Page Contains Element  css=#searchTerm
    Click Element  css=#searchTerm
    Input Text  css=#searchTerm  ${PRODUCT_1}
    Press Keys  css=#searchform > label > i  ENTER
Verify That Search Completed
    Wait Until Page contains  Results for
    Page Should Contain  Results for
User Select One Of The Results
    Wait Until Page Contains Element  css=li.product-tile__item:nth-child(1) > div:nth-child(2)
    Click Element  css=li.product-tile__item:nth-child(1) > div:nth-child(2)
Adds Product
    Wait Until Page contains Element  css=input.tds-btn--full
    Click Element  css=input.tds-btn--full
Choose The Product Size
    Wait Until Page Contains Element  css=div.product-form:nth-child(2) > div:nth-child(1) > section:nth-child(1) > ul:nth-child(3) > li:nth-child(1) > label:nth-child(2)
    Click Element  css=div.product-form:nth-child(2) > div:nth-child(1) > section:nth-child(1) > ul:nth-child(3) > li:nth-child(1) > label:nth-child(2)
Verify That Product Add To Cart
    Wait Until Page Contains Element  css=.nav-cart > button:nth-child(1)
    Click Element  css=.nav-cart > button:nth-child(1)
    Wait Until Page contains  Your Cart(1)
    Page Should Contain  Your Cart(1)
Dismiss Alert
    ${BUTTON_COUNTS} =  GET ELEMENT COUNT  css=.locale-main-header
    Run Keyword if  ${BUTTON_COUNTS}>0  Close Alert 
    
