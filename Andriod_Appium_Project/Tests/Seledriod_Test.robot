*** Settings ***
Documentation  Simple example using AppiumLibrary
Library  AppiumLibrary
Resource    ../Keywords/Selendriod_Keywords.robot
Resource    ../CommonUtils/CommonUtils_Keywords.robot
Suite Setup      OPEN APP
Suite Teardown    CLOSE APP

*** Test Cases ***
Register User
    Click Continue Button
    Click Permission ok Button
    Click User Registration Strat Button
    Sleep    2
    Enter the UserName    abc@gmail.com
    Enter the Email    abc@123@gmail.com
    Enter the Password    123456789
    Enter the Name    ABCD
    Go Back
    Select PROGRAMMING Language AS   Python
    Select the Accept_CheckBox
    Click REGISTER Button
    Sleep    2
    ${Username}=    Get USERNAME
    Log To Console    USERNAME : ${Username}
    ${Email}=    Get Email
    Log To Console    EMAIL : ${Email}
    ${Password}=    Get Password
    Log To Console    PASSWORD : ${Password}
    ${NAME}=        Get Name
    Log To Console    NAME : ${NAME}
    ${PROGRAMMING_LANGUAGE}=    Get Programming_Language
    Log To Console    PROGRAMMING LANGUAGE : ${PROGRAMMING_LANGUAGE}
    ${ACCEPT}=      Get Accept_Checkbox
    Log To Console    ACCEPT : ${ACCEPT}
























#Display the Toast Message
#    Click Continue Button
#    Click Permission ok Button
#    cliick Toast Button
#    ${Toast_Message}=   Get Toast Message
#    Log To Console    ${Toast_Message}
