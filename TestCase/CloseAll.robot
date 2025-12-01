*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestCase
    Open Browser    https://practice.qabrains.com/registration    chrome
    Maximize Browser Window

    Open Browser    https://practice.qabrains.com/    chrome
    Maximize Browser Window

    Close All Browsers