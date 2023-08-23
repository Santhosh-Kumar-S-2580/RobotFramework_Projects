*** Settings ***
Library      AppiumLibrary
Resource     ../Pageobjects/AmazonPageObjects.robot



*** Keywords ***

Click signButton
    Click Element    ${SignButton}

Enter the Email
        [Arguments]  ${em}
        Input Text    ${email}   ${em}
Get Error Msg
    ${msg}=       Get Text    ${errmsg}
    [Return]        ${msg}


