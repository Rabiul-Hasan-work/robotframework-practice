*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}        https://practice.qabrains.com/


*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be   QA Practice Site
    ${"email_txt"}    Set Variable    id:email
    
    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}

    Input Text    ${"email_txt"}    JohnDoe@gmail.com
    Sleep    5
    Clear Element Text    ${"email_txt"}
    Sleep    3
    close browser
*** Keywords ***