*** Settings ***

Library  SeleniumLibrary
Documentation    Banned Login test

Resource  ../resources/common.resource
Resource  ../resources/saucedemo.resource
Variables  ../resources/variables.py

Test Setup  common.Begin web test
Test Teardown  common.End web test

*** Variables ***

${user_name} =  locked_out_user

*** Test Cases ***

Banned user locked_out_user can not login to saucedemo.com.

    Input Text  id=user-name  ${user_name}
    Input Password  id=password  ${password}
    Mouse Over  id=login-button
    Click Button  id=login-button
    Page Should contain  Epic sadface: Sorry, this user has been locked out.
