*** Settings ***
Library      AppiumLibrary
Resource     ../Pageobjects/SelendriodPageObjects.robot


*** Keywords ***
Click Continue Button
    Click Element    ${ContinueBTN}

Click Permission ok Button
    Click Element    ${PERMISSION_OK_BTN}

cliick Toast Button
    Click Element    ${ToastBTN}

Get Toast Message
#      Wait Until Page Contains Element    ${ToastMSG}
      ${msg}=   AppiumLibrary.Get Text   ${ToastMSG}
      [Return]      ${msg}

Click User Registration Strat Button
    Click Element    ${UserRegisterStartBTN}

Enter the UserName
    [Arguments]    ${Usrname}
    Input Text    ${EnterUsername}    ${Usrname}

Enter the Email
    [Arguments]    ${email}
    Input Text    ${EnterEmail}    ${email}

Enter the Password
    [Arguments]    ${Password}
    Input Text    ${EnterPWD}    ${Password}

Enter the Name
    [Arguments]    ${name}
    Clear Text    ${EnterNAME}
    Input Text    ${EnterNAME}    ${name}



Select PROGRAMMING Language AS
        [Arguments]      ${lang}
        Click Element    ${LANG_DropDown}
        Sleep    2
        Click Element    xpath=.//android.widget.CheckedTextView[contains(@text,'${lang}')]

Select the Accept_CheckBox
    Click Element    ${chkBox}

Click REGISTER Button
    Click Element    ${RegisterBTN}



Get USERNAME
    ${uname}=      Get Text    ${Username}
    [Return]    ${uname}

Get Email
    ${em}=       Get Text    ${Email}
    [Return]    ${em}

Get Password
    ${Pass}=         Get Text    ${PWD}
    [Return]        ${Pass}

Get Name
    ${na}=      Get Text    ${NAME}
    [Return]        ${na}

Get Programming_Language
    ${PL}=      Get Text    ${PROG_LANG}
    [Return]   ${PL}

Get Accept_Checkbox
    ${chk}=         Get Text    ${ACPT_chkBox}
    [Return]        ${chk}








