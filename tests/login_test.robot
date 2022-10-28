*** Settings ***

Documentation    User standard_user can login and logout.
Library  SeleniumLibrary
Resource  ../resources/common.resource
Resource  ../resources/saucedemo.resource
Variables  ../resources/variables.py

Test Setup  common.Begin web test
Test Teardown  common.End web test

*** Variables ***

${user_name} =  standard_user

*** Test Cases ***

User standard_user can successfully login and logout (saucedemo.com).
    saucedemo.Login to app
    saucedemo.Logout from app
    