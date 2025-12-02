*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    Open Browser    https://testautomationpractice.blogspot.com/    chrome

    Sleep    2s

    Click Element    xpath://*[@id="Wikipedia1_wikipedia-search-form"]/div/span[1]/a/img

    Switch Window    Wikipedia, the free encyclopedia
     
    Click Element    xpath://*[@id="pt-sitesupport-2"]/a/span

    sleep    3s

    Close All Browsers
         