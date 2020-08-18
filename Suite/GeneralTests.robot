*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Test Cases ***
User load page
    Load Page And Maximize Browser Window
User select the market
    Load Page And Maximize Browser Window
    Select The Market
    Close Browser
User sign in to account
    Load Page And Maximize Browser Window
    Dismiss Alert
    Sign In  bazhenkak@gmail.com  change13
    Close Browser
User search the product
    Load Page And Maximize Browser Window
    Dismiss Alert
    Search The Product   Hoodie
    Verify That Search Completed
    Close Browser
User adds product to the cart
    Load Page And Maximize Browser Window
    Dismiss Alert
    Search The Product  Hoodie
    Verify That Search Completed
    User Select One Of The Results
    Choose The Product Size
    Add Product
    Verify That Product Add To The Cart
    Close Browser
    
    
