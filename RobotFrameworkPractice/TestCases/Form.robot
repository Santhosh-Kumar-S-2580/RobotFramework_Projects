*** Settings ***
Library     SeleniumLibrary
Library     ../CustomLibraries/wel.py
Library    String
#Test Setup   CommonUtils.LaunchBrowser    ${url}    ${browser}
#Test Teardown       CommonUtils.close
Suite Setup     CommonUtils.LaunchBrowser    ${url}    ${browser}
Suite Teardown  CommonUtils.close
#Library         DataDriver      file=../TestData/data.xlsx    sheetname=sheet1
#Library         DataDriver      file=../TestData/data.csv
Resource     ../PageObjects/browserObjects.robot
Resource     ../Keywords/CommonUtils.robot
Resource     ../Keywords/FormKeywords.robot
#Test Template           Filling the Form

#*** Test Cases ***              firstname            midname
#data1                            santhosh             kumar
#data2                              ss                   sk
#data3                             Kumar                 ks
#data4                               kr               santhosh
*** Test Cases ***
Fill
    Filling the Form    ${firstname}    ${midname}

*** Keywords ***
Filling the Form
    [Arguments]     ${firstname}        ${midname}
    FormKeywords.Enter FirstName     ${firstname}
    FormKeywords.Enter MidName       ${midname}
    Should Be Equal As Strings    ${firstname}    santhosh
    IF    "${midname}" == "kumar"
         Log To Console    TRUE
    END
    Hello World
    Hello



#    Input Text    ${mname}   Kumar
#    CommonUtils.Highlight Element   ${lname}
#    Input Text    ${lname}     s
#    Capture Element Screenshot    ${name}    C:\Users\santhosh.kumar\PycharmProjects\RobotFrameworkPractice\Screenshot\element.png
#    CommonUtils.Highlight Element   ${course}
#    Select From List By Value    ${course}   MBA
#    Highlight Element   ${gender}
#    Select Radio Button    ${gender}    female
#    Highlight Element   ${veh}
#    Select Checkbox    ${veh}
#    Highlight Element   ${country}
#    Input Text    ${country}    +044
#    Highlight Element   ${phone}
#    Input Text    ${phone}    9876543210
#    Highlight Element   ${address}
#    Input Text    ${address}    42,annaNagar
#    Highlight Element   ${email}
#    Input Text    ${email}      ss@gmail.com
#    Highlight Element   ${pwd}
#    Input Password    ${pwd}    2312e@#$
#    Highlight Element   ${cpwd}
#    Input Password    ${cpwd}    2312e@#$
#    Highlight Element   ${lbtn}
#    Click Button      ${lbtn}
#    Capture Page Screenshot     C:\Users\santhosh.kumar\PycharmProjects\RobotFrameworkPractice\Screenshot\page.png



