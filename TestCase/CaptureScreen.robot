*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
LoginTc
    Open Browser    https://practice.qabrains.com/    Chrome
    Maximize Browser Window
    Input Text    id:email    qa_testers@qabrains.com
    Input Text    id:password    Password123

    Capture Element Screenshot    xpath://*[@id="page-header"]/div/div/a/img    C:/Robot-framework-automation/robot-framework-practice/screenshot/logo.png
    Capture Page Screenshot    C:/Robot-framework-automation/robot-framework-practice/screenshot/page.png
    

