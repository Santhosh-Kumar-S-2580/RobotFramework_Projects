*** Settings ***
Documentation  Simple example using AppiumLibrary
Library  AppiumLibrary
Resource    ../Keywords/Calculator_Keyword.robot
Resource    ../CommonUtils/CommonUtils_Keywords.robot
Suite Setup      OPEN APP
Suite Teardown    CLOSE APP

*** Test Cases ***

CHANGE THEME IN CALCULATOR
     Click MoreOptions Button
     Click ChooseTheme Button
     click ThemeSelect Button
     click ok Button

Click ALL BUTTONS IN CALCULATOR
    @{LIST}=    Get WebElements    ${CalcBtns}
    FOR    ${element}    IN     @{LIST}
        ${ID}=  AppiumLibrary.Get Element Attribute    ${element}    resource-id
        Log To Console    Resource Id(ID) :${ID}
        ${content}=     AppiumLibrary.Get Element Attribute    ${element}    content-desc
        Log To Console     Content of the Resource(content-desc) :${content}
        Click Element    ${element}
    END

PERFORM CALCULATION ON CALCULATOR
     Click CLEAR Button
     Press Number Two
     Press Number Five
     Click ADD Button
     Press Number Two
     Press Number Five
     Click EQUALTO BUTTON
     Sleep    5
     ${res1}=  Get Result
     Log To Console    RESULT 1:${res1}
     Should Be Equal As Strings    ${res1}    50
     Click MULTIPLY Button
     Press Number Two
     Click EQUALTO BUTTON
     Sleep    5
     ${res2}=  Get Result
     Log To Console    RESULT 2:${res2}
     Should Be Equal As Strings    ${res2}    100
       
    
      
      


#open APP
#    Open Application      http://localhost:4723/wd/hub	    platformName=Android    platformVersion=10 	deviceName=ZF652253BB  appPackage=com.google.android.calculator  appActivity=com.android.calculator2.Calculator
#    Log To Console    APPLICATION OPENED SUCESSFULLY
#    Click Element    ${MoreOptions}
#    Click Element    ${ChooseTheme}
#    Click Element    ${ThemeSelect}
#    Click Element    ${ClickOK}
#    @{LIST}=    Get WebElements    ${CalcBtns}
#    FOR    ${element}    IN     @{LIST}
#        ${ID}=  AppiumLibrary.Get Element Attribute    ${element}    resource-id
#        Log To Console    Resource Id(ID) :${ID}
#        ${content}=     AppiumLibrary.Get Element Attribute    ${element}    content-desc
#        Log To Console     Content of the Resource(content-desc) :${content}
#        Click Element    ${element}
#    END
#    Close Application
#    		