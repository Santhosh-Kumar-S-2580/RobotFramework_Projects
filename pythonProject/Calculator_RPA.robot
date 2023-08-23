*** Settings ***
Library    RPA.Windows
*** Test Cases ***
#Do some calculations
#    [Setup]  Windows Run   calc.exe
#    Control Window    name:Calculator
#    Click    id:clearButton
#    Send Keys   keys=96+4=
#    ${result}=    Get Attribute    id:CalculatorResults    Name
#    Log To Console    ${result}
#    ${buttons}=  Get Elements  type:Group and name:"Number pad" > type:Button
#    FOR  ${button}  IN  @{buttons}
#        Log To Console   ${button.name}
#    END
#    ${btnname}=    Get Attribute    id:num1Button    Name
#    Log To Console    ${btnname}
#    Sleep    4
#    Click    id:TogglePaneButton
#    Click    id:Scientific
#    [Teardown]   Close Current Window
Do some calculations
    [Setup]  Windows Run   Registration.jar
    Control Window    name:Registration Form

#Set Values In Notepad
#    [Setup]  Windows Run   Notepad.exe
#    Control Window    type:WindowControl class:Notepad
#    Send Keys       id:15       asadasdsadsadsadasd