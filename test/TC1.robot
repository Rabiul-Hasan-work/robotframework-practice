*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}        https://practice.qabrains.com/

*** Test Cases ***
TC1 Login Test
    [Documentation]    Test case to verify login functionality
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    loginToApplication
    Sleep    2s
    Close Browser

*** Keywords ***
loginToApplication
    Input Text    id:email    qa_testers@qabrains.com
    Input Text    id:password    Password123
    Click Button    xpath=//*[@id="home-page"]/div/div[1]/form/button