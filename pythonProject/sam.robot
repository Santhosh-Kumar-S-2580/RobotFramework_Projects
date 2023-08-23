*** Settings ***
Documentation   test script
Library         SeleniumLibrary


*** Test Cases ***
Test Hello world
    Log To Console    Hello world
#    Create Webdriver    Chrome
#    Go To    url
#    Open Browser    https://github.com/robotframework/SeleniumLibrary/      chrome
#    Go To       https://gith.com/robotframework/SeleniumLibrary/
    Open Browser        https://www.google.com/     chrome
    Maximize Browser Window
    ${title}=   get Title
    Log To Console    ${title}
