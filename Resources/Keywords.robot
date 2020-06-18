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
Dismiss Alert
    Wait Until Page Contains Element  css=#locale-modal-close
    Click Element  css=#locale-modal-close
Search The Product
    Wait Until Page Contains Element  css=i.tds-icon--small:nth-child(1)
    Click Element  css=i.tds-icon--small:nth-child(1)
    Wait Until Page Contains Element  css=#searchform
    Click Element  css=#searchform
    Input Text  css=i.tds-icon--small:nth-child(1)  ${PRODUCT_1}
    Wait Until Page Contains Element  css=i.tds-icon--small:nth-child(1)
    Click Element  css=i.tds-icon--small:nth-child(1)
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
    
    
