*** Settings ***
Library     SeleniumLibrary
Library     String
Library      DataDriver      file=phonenumbers.xlsx    sheetname=sheet1
Library    Collections
Library    OperatingSystem
Test Template   Print the phonenumber

*** Variables ***
#@{LIST1}          HomePhone   MobilePhone    AlternatePhone1    AlternatePhone2
@{LIST2}          Homephone   Mobilephone    Alterphone1    Alterphone2
*** Test Cases ***
PhoneTest

*** Keywords ***
Print the phonenumber
    Set Selenium Speed    3
    [Arguments]   ${Homephone}  ${mobilephone}  ${Alternatephone1}  ${Alternatephone2}
    @{phonelist2}=   createList
    Log To Console    ${phonelist2}
    Append To List    ${phonelist2}  ${Homephone}
    Append To List    ${phonelist2}  ${mobilephone}
    Append To List    ${phonelist2}  ${Alternatephone1}
    Append To List    ${phonelist2}  ${Alternatephone2}
    Log To Console    ${LIST2}
    Log To Console    ${phonelist2}
    ${index} =    Set Variable    0
    Open Browser    file:///C:/Users/santhosh.kumar/Documents/HTML/phone.html      chrome
    Sleep    3
    FOR    ${element}    IN    @{phonelist2}
        Log To Console    ${LIST2}[${index}]
        Log To Console    ${element}
        ${id} =   Catenate    ty${LIST2}[${index}]
        Log To Console    ${id}
        ${first3} =    Get Substring    ${element}    0    3
        Input Text    id:${id}    ${first3}
        Log To Console    ${first3}
        ${id} =   Catenate    ty${LIST2}[${index}]1
        Log To Console    ${id}
        ${middle} =    Get Substring    ${element}    3    6
        Input Text    id:${id}    ${middle}
        Log To Console    ${middle}
        ${id} =   Catenate    ty${LIST2}[${index}]2
        Log To Console    ${id}
        ${last} =    Get Substring    ${element}    6    12
        Input Text    id:${id}    ${last}
        Log To Console    ${last}
        ${index} =    Evaluate    ${index} + 1
    END




















































#    ${result} =    Get Substring    Hello Robot    0    3
#    Log To Console    ${result}
#    ${index} =    Set Variable    -1
#    FOR  ${element}  IN    ${phonelist}
#        Log To Console    ${element}
#        ${index} =    Evaluate    ${index} + 1
#        Log To Console    ${element}[${index}]
#        ${first3} =    Get Substring    ${element}    0    3
#        Log To Console    ${first3}
#        ${middle} =    Get Substring    ${element}    3    6
#        Log To Console    ${middle}
#        ${last} =    Get Substring    ${element}    6    12
#        Log To Console    ${last}
#    END
    #    FOR    ${element}    IN    @{phonelist}
#        Log To Console    ${LIST1}[${index}]
#        Log To Console    ${element}
#        ${first3} =    Get Substring    ${element}    0    3
#        Log To Console    ${first3}
#        ${middle} =    Get Substring    ${element}    3    6
#        Log To Console    ${middle}
#        ${last} =    Get Substring    ${element}    6    12
#        Log To Console    ${last}
#        ${index} =    Evaluate    ${index} + 1
#    END




