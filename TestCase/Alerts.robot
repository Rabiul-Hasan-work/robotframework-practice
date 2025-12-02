*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    Open Browser    https://testautomationpractice.blogspot.com/
    Click Element    xpath://*[@id="alertBtn"]
    sleep    3s
    # Handle Alert    accept
    # Handle Alert    dismiss
    # Handle Alert    leave
    Alert Should Be Present    I am an alert box!
    Close Browser