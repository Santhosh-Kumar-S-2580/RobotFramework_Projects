*** Settings ***
Library     SeleniumLibrary





*** Keywords ***
Highlight Element
     [Arguments]     ${webele}
     ${ele}    Get WebElement    ${webele}
     Execute Javascript    arguments[0].setAttribute('style', 'border: 4px solid green');     ARGUMENTS    ${ele}
LaunchBrowser
    [Arguments]      ${ur}      ${bro}
    Open Browser    ${ur}      ${bro}
    Maximize Browser Window
    Set Selenium Speed    1
close
    Close Browser