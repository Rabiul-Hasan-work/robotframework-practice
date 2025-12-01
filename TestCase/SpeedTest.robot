*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegistrationTest
    Open Browser    https://practice.qabrains.com/registration    chrome
    Maximize Browser Window

    # ${spead}=    Get Selenium Speed
    # Log To Console    ${spead}
    Set Selenium Timeout    10s
    Wait Until Page Contains    User Authentication

    # Sleep    3s
    # Set Selenium Speed    1s
    Input Text    name:name    David
    Select From List By Label    country    Bangladesh
    Select From List By Label    account    Engineer
    Input Text    name:email    user@user.com
    Input Text    name:password    12345678
    Input Text    name:confirm_password    12345678
    Wait Until Element Is Visible    xpath=//*[@id="inner-body"]/div/div[1]/form/button    10s
    Scroll Element Into View         xpath=//*[@id="inner-body"]/div/div[1]/form/button
    Click Button    xpath=//*[@id="inner-body"]/div/div[1]/form/button

    # ${spead}=    Get Selenium Speed
    # Log To Console    ${spead}

    Close Browser