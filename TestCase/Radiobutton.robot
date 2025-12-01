*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}        https://practice.qabrains.com/form-submission

*** Test Cases ***
Testing Radio Button and Check Boxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2s
    #Selecting Radio Buttons
    Scroll Element Into View    id=Green
    Select Radio Button    color  Green
    Sleep    2s

    #Selecting Check Boxes
    Scroll Element Into View    id=Pizza
    Select Checkbox   id=Pizza
    Sleep    2s
    Unselect Checkbox   id=Pizza
    Sleep    2s    
    Close Browser