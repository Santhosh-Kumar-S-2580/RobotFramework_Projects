*** Settings ***
Library         SeleniumLibrary
Library    Telnet


*** Variables ***

*** Test Cases ***
Handling Alert
    Open Browser    https://www.leafground.com/alert.xhtml      chrome
    Maximize Browser Window
#    Set Selenium Speed    3
#    Set Selenium Implicit Wait    20
#    Set Selenium Timeout    20
    Click Element    id:j_idt88:j_idt91
    ${message}=  Handle Alert  accept
    Log To Console    ${message}
    ${text}=    Get Text    id:simple_result
    Log To Console    \n ${text}
    Click Element    id:j_idt88:j_idt93
    Handle Alert  dismiss
    ${text1}=    Get Text    id:result
    Log To Console    \n ${text1}
    ${pageTitle1}=   Get Title
    Log To Console    \n ${pageTitle1}
    ${loc1}=    Get Location
    Log To Console    \n ${loc1}
    Go To    https://the-internet.herokuapp.com/javascript_alerts
    ${pageTitle2}=   Get Title
    Log To Console    \n ${pageTitle2}
    ${loc2}=    Get Location
    Log To Console    \n ${loc2}
    Click Button    xpath://*[@id="content"]/div/ul/li[3]/button
    Input Text Into Alert    SANTHOSH KUMAR  ACCEPT
    ${text2}=   Get Text    id:result
    Log To Console    \n ${text2}
    Click Button    xpath://*[@id="content"]/div/ul/li[1]/button
    Alert Should Be Present     I am a JS Alert
    ${text3}=   Get Text    id:result
    Log To Console    \n ${text3}
    Sleep    5
    Click Button    xpath://*[@id="content"]/div/ul/li[2]/button
    Handle Alert   leave




    