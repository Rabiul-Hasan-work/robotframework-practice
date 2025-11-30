*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://practice.qabrains.com/form-submission
*** Test Cases ***
Handling Dropdowns and Lists
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2s
    Select From List By Label    country    Barbados
    Sleep    3s
    Select From List By Index    country    3

    Close Browser
