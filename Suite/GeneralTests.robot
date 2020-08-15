*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Test Cases ***
User Load Page
    Open and Load
User Select The Market
    Open and Load
    Select The Market
    Close Browser
User Sign In to Account
    Open and Load
    Dismiss Alert
    Sign In  bazhenkak@gmail.com  change13
    Close Browser
User Search The Product
    Open and Load
    Dismiss Alert
    Sign In  bazhenkak@gmail.com  change13
    Search The Product   Hoodie
    Verify That Search Completed
    Close Browser
User Adds Product To Cart
    Open and Load
    Dismiss Alert
    Sign In  bazhenkak@gmail.com  change13
    Search The Product  Hoodie
    Verify That Search Completed
    User Select One Of The Results
    Choose The Product Size
    Adds Product
    Verify That Product Add To Cart
    Close Browser
    
    
