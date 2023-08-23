*** Settings ***
Library         SeleniumLibrary



*** Keywords ***
SuccessMsg
    Log To Console    BROWSER LAUNCHED SUCCESSFULLY

Test1
     Set Selenium Speed    5
     Click Element    id:menuform:j_idt40
     Click Element    id:menuform:m_input
     Log To Console    SUCCESS