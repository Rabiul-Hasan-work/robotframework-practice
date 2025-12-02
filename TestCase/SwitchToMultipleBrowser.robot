*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Multiple browser Test
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window

    Sleep    2s


    Open Browser    https://www.bing.com    chrome
    Maximize Browser Window


    Switch Browser    1

    ${title1}=    Get Title
    Log To Console    First Browser Title: ${title1}

    Switch Browser    2
    ${title2}=    Get Title
    Log To Console    Second Browser Title: ${title2}

    Sleep    2s

    Close All Browsers