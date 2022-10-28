*** Settings ***

Library  SeleniumLibrary
Documentation    Purchase test
Resource  ../resources/common.resource
Resource  ../resources/saucedemo.resource
Variables  ../resources/variables.py

Test Setup  common.Begin web test
Test Teardown  common.End web test

*** Variables ***

${user_name} =  standard_user

*** Test Cases ***

User standard_user can successfully make a purchase on saucedemo.com.
    saucedemo.Login to app
    Click Button  id:add-to-cart-sauce-labs-backpack
    Click Element  class:shopping_cart_link
    Click Button  id:checkout
    Input Text  id:first-name  Standard
    Input Text  id:last-name  User
    Input Text  id:postal-code  01234
    Click Button  id:continue
    Wait Until Page Contains  Checkout: Overview
    Click Button  id:finish
    Page Should Contain  Checkout: Complete!
    saucedemo.Logout from app
    