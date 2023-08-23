*** Settings ***
Library         SeleniumLibrary



*** Variables ***

*** Test Cases ***
window handle
    Open Browser    https://www.leafground.com/window.xhtml     chrome
    Maximize Browser Window
    Set Selenium Speed    1
#    Click Button    id:j_idt88:new
#    Sleep    6
#    Switch Window   new
#    ${txt}=  Get Text    xpath:(//div[@class='overview-title'])[1]
#    Log To Console    ${txt}
#    Capture Element Screenshot    xpath:(//*[@class='col-12 md:col-12 lg:col-4'])[1]    C:\Users\santhosh.kumar\PycharmProjects\RobotFrameworkPractice\Screenshot\learnerdiv1.png
#    Switch Window   main
#    ${txt1}=  Get Text    (//*[@class='card'])[1]/h5
#    Log To Console    ${txt1}
#    Capture Element Screenshot    xpath:(//*[@class='card'])[1]     C:\Users\santhosh.kumar\PycharmProjects\RobotFrameworkPractice\Screenshot\videoviewsdiv2.png
    ${handle}=    Get Window Handles
    Log To Console  \n ${handle}
     ${maintitle}=   Get Window Titles
    Log To Console    \n MainTitles:
    Log To Console    \n ${maintitle}
    Click Button    id:j_idt88:j_idt91
    ${handles}=    Get Window Handles
    Log To Console  \n Handles :
    Log To Console  \n ${handles}
    ${title}=   Get Window Titles
    Log To Console    \n Titles:
    Log To Console    \n ${title}
    ${pos}=   Get Window Position
    Log To Console    \n pos:
    Log To Console    \n ${pos}
    ${size}=    Get Window Size
    Log To Console    \n size
    Log To Console    ${size}
    ${id}=  Get Window Identifiers
    Log To Console    \n ${id}
    Log To Console    \n identifiers
    Switch Window   ${handles}[1]
    Close Window
    Switch Window   ${handles}[2]
    Close Window
    Switch Window   main







#    ${handles}=    Get Window Handles
#    Switch Window    ${handles}[1]
#    Click Button When Visible    id:closewindow
#    Switch Window    ${handles}[0]
#    Click Button When Visible    id:openalert
