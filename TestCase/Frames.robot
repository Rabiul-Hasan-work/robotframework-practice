*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandlingFrames
    Open Browser    https://testautomationpractice.blogspot.com/
    Maximize Browser Window

    Select Frame    xpath://*[@id="frame-one1434677811"]
    Input Text    id:name    Test User
    Sleep    2s
    Unselect Frame

    Select Frame    xpath://*[@id="frame-two1434677811"]
    Click Element    id:speed
    Sleep    2s
    Unselect Frame

    Close Browser
    
