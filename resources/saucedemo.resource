*** Settings ***

Library  SeleniumLibrary
Variables  ../resources/variables.py


*** Keywords ***

Login to app

    Input Text  id:user-name  ${user_name}
    Input Password  id:password  ${password}
    Mouse Over  id:login-button
    Click Button  id:login-button
    Page Should contain  Products
    
Logout from app

    Wait Until Element Is Visible  id:react-burger-menu-btn
    Mouse Over  id:react-burger-menu-btn
    Click Element  id:react-burger-menu-btn

    Wait Until Element Is Visible  id:logout_sidebar_link
    Mouse Over  id:logout_sidebar_link
    Click Element  id:logout_sidebar_link
