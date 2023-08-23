*** Settings ***
Library      AppiumLibrary
Resource     ../Pageobjects/CalculatorPageObjects.robot


*** Keywords ***
 Click MoreOptions Button
       Click Element    ${MoreOptions}
 Click ChooseTheme Button
        Click Element    ${ChooseTheme}
 click ThemeSelect Button
        Click Element    ${ThemeSelect}
 click ok Button
        Click Element    ${ClickOK}
 Get Result
        ${re}=  Get Text    ${result}
        [Return]  ${re}
 
 Press Number Two
       Click Element    ${second_BTN}
       
 Press Number Five
       Click Element    ${fifth_BTN}
       
 Click ADD Button
        Click Element    ${ADD_BTN}
 
 Click MULTIPLY Button
        Click Element    ${MUL_BTN}
      
 Click CLEAR Button 
        Click Element    ${CLR_BTN}
        
 Click EQUALTO BUTTON
       Click Element    ${EQLTO_BTN}
        





