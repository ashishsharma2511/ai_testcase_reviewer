*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Verify Login Functionality
    [Tags]    smoke
    Open Browser    https://example.com    Chrome
    Input Text    username_field    user1
    Input Text    password_field    pass123
    Click Button    login_button
    Sleep    2s
    Page Should Contain    Welcome, user1
    Close Browser