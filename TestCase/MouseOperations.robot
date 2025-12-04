*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    # Right Click Action
    # Open Browser    https://webbrowsertools.com/test-right-click/
    # Maximize Browser Window
    # Wait Until Element Is Visible    xpath=//*[@id="test-right-click-6"]
    # Scroll Element Into View    xpath=//*[@id="test-right-click-6"]
    # Open Context Menu    xpath://*[@id="test-right-click-6"]
    # Sleep    3s
    # Close Browser

    # Double Click Action
    Open Browser    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Sleep    3s
    Scroll Element Into View    xpath://*[@id="HTML10"]/div[1]/button
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    Sleep    3s

    # drag and drop action
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Drag And Drop    id:draggable    id:droppable
    Sleep    3s

    Close Browser