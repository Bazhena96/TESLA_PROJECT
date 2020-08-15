*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Test Cases ***
User load page
    Open and Load
User select the market
    Open and Load
    Select The Market
    Close Browser
User sign in to account
    Open and Load
    Dismiss Alert
    Sign In  bazhenkak@gmail.com  change13
    Close Browser
User search the product
    Open and Load
    Dismiss Alert
    Sign In  bazhenkak@gmail.com  change13
    Search The Product   Hoodie
    Verify That Search Completed
    Close Browser
User adds product to the cart
    Open and Load
    Dismiss Alert
    Sign In  bazhenkak@gmail.com  change13
    Search The Product  Hoodie
    Verify That Search Completed
    User Select One Of The Results
    Choose The Product Size
    Adds Product
    Verify That Product Add To The Cart
    Close Browser
    
    
