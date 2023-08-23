*** Settings ***
Library         SeleniumLibrary



*** Variables ***

*** Test Cases ***
HandleBrowser
    Open Browser    https://www.flipkart.com/   chrome
    Maximize Browser Window



    Open Browser    https://www.amazon.in/      edge
    Maximize Browser Window
    Get Browser Aliases


    Switch Browser    1
    ${title1}=  Get Title
    Log To Console    \n Browser1 Title
    Log To Console    \n ${title1}



    Sleep    2
    Switch Browser    2
    ${title2}=  Get Title
    Log To Console    \n Browser2 Title
    Log To Console    \n ${title2}


   ${ele}    Get WebElement    id=clearPass
   Execute Javascript    arguments[0].value='pass';     ARGUMENTS    ${ele}
