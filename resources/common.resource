*** Settings ***

Library  SeleniumLibrary
Variables  variables.py

*** Keywords ***

Begin web test
    Set Selenium Speed 	0.5
    Open Browser  about:blank  ${browser}
    Go To  ${start_url}
        
End web test
    Wait Until Page Contains Element  id:login-button
    # Page Should Contain Button  id:login-button 
    Close Browser
