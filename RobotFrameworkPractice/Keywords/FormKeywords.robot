*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Pageobjects.py
Resource     ../Keywords/CommonUtils.robot
Variables   ../PageObjects/data.py

*** Keywords ***
Enter FirstName
    [Arguments]    ${Fn}
    CommonUtils.Highlight Element   ${name}
    Input Text    ${name}    ${Fn}
Enter MidName
    [Arguments]    ${Fn}
    CommonUtils.Highlight Element   ${mname}
    Input Text    ${mname}    ${Fn}
Enter lastName
    [Arguments]    ${Fn}
    CommonUtils.Highlight Element   ${lname}
    Input Text    ${lname}    ${Fn}















