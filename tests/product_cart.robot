*** Settings ***

Library  SeleniumLibrary
Documentation    Add product to cart
Resource  ../resources/common.resource
Resource  ../resources/saucedemo.resource
Variables  ../resources/variables.py

*** Variables ***

${user_name} =  standard_user

*** Test Cases ***

User standard_user can add product to cart and delete product from cart on saucedemo.com
    common.Begin web test
    saucedemo.Login to app
    Click Button  id=add-to-cart-sauce-labs-backpack
    Click Element  class:shopping_cart_link   
    Wait Until Page Contains Element  id:remove-sauce-labs-backpack
    saucedemo.Logout from app
    
    saucedemo.Login to app
    Click Element  class:shopping_cart_link   
    Wait Until Page Contains Element  id:remove-sauce-labs-backpack
    Click Element  id:remove-sauce-labs-backpack
    Page Should Contain Button  id:continue-shopping
    Click Button  id:continue-shopping
    saucedemo.Logout from app
    common.End web test
    
