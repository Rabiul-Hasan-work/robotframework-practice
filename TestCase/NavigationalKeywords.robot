*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Navigational Keywords Test
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window

    ${loc}=    Get Location
    Log To Console    Current URL: ${loc}


    Go To    https://www.bing.com
    ${loc}=    Get Location
    Log To Console    Current URL: ${loc}
    Sleep    2s

    Go Back
    Sleep    2s
    ${loc}=    Get Location
    Log To Console    After Going Back, URL: ${loc}

    Close All Browsers