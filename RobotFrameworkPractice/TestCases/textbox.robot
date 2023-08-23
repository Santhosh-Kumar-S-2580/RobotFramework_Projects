*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***

@{LIST1}         a    b    c
*** Test Cases ***
Handle TextBox
    LaunchBrowser
    Input Text    id:j_idt88:name    SANTHOSH
    Sleep    5
    Clear Element Text    id:j_idt88:j_idt95
    Sleep    5
    ${text}=    Get Element Attribute   id:j_idt88:j_idt97  value
    Log To Console    ${text}
SelectDropdown values & store into list
    LaunchBrowser
    Input Text    id:j_idt106:auto-complete_input    san
    Sleep    5
    @{LIST}=    Get WebElements    xpath://span[@id='j_idt106:auto-complete_panel']/ul/li
    @{textList}=    Create List
    FOR  ${element}  IN  @{LIST}
         ${text}=  Get Text  ${element}
         Append To List  ${textList}  ${text}
    END
    Log To Console  \n List from WebPage:
    Log To Console  ${textList}
AutoSuggestion DropDown Selection Using Text
    LaunchBrowser
    Input Text    id:j_idt106:auto-complete_input    san
    Sleep    5
    @{LIST}=    Get WebElements    xpath://span[@id='j_idt106:auto-complete_panel']/ul/li
    @{textList}=    Create List
    ${sc}   Set Variable    san3
     FOR  ${element}  IN  @{textList}
        IF    "${element}" == "${sc}"
             Log To Console    ${element}
        END
     END
     FOR  ${element}  IN  @{LIST}
         ${text}=  Get Text  ${element}
         IF    "${text}" == "${sc}"
             Click Element    ${element}
             Log To Console  \n element is clicked succuessfully
             Log To Console    ${text}
        END
    END
AutoSuggestion DropDown Selection Using Index
    LaunchBrowser
    Input Text    id:j_idt106:auto-complete_input    ss
    Sleep    5
    @{LIST}=    Get WebElements    xpath://span[@id='j_idt106:auto-complete_panel']/ul/li
    ${index} =    Set Variable    -1
    FOR  ${element}  IN  @{LIST}
          ${index} =    Evaluate    ${index} + 1
         IF    ${index} == 2
             Click Element    ${element}
             Log To Console  \n element is clicked succuessfully
             ${text}=  Get Text  ${element}
             Log To Console    ${text}
        END

    END

Manage index manually
    ${index} =    Set Variable    -1
    FOR    ${item}    IN    @{LIST1}
         ${index} =    Evaluate   ${index} + 1
        IF    ${index} == 2
             Log To Console    ${item}
        END
        Log To Console    ${index}
    END

*** Keywords ***
LaunchBrowser
    Open Browser    https://leafground.com/input.xhtml        chrome
    Maximize Browser Window

#    Log To Console  Our List:
#    Log To Console  ${quickLaunchList}
#    Lists Should Be Equal  ${textList}  ${quickLaunchList}
   
