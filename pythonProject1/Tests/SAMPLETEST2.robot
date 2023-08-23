*** Settings ***
Library         SeleniumLibrary
Resource        ../CommonUtilis/Common.robot
Resource        ../Keywords/keyword.robot
Resource        ../TestData/data.robot


*** Test Cases ***
Loop Testing
       [Tags]   smoke
       MULTI-BROWSER TESTING