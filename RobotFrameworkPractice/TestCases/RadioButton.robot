*** Settings ***
Library     SeleniumLibrary
Library     ../CustomLibraries/welcome.py

*** Variables ***


*** Test Cases ***
Details Entering into the Form
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Select Frame    id:frame-one1434677811
    Sleep    5
    Input Text    id:RESULT_TextField-1    Raja
    Sleep    4
    Unselect Frame
    Select From List By Label    id:speed   Medium
    Sleep    6
    Select From List By Value    id:files   3
    Sleep    5
    Select From List By Index    id:number  2
    Sleep    5
    Page Title





