*** Settings ***
Library    RPA.Windows
Library    SeleniumLibrary
*** Tasks ***



Set Values In Notepad
    [Setup]  Windows Run   msedge.exe
    Control Window    type:WindowControl class:Chrome_WidgetWin_1
#    Send Keys       id:view_1020       https://www.google.com/
#    Send Keys       keys={ENTER}
    Send Keys       keys={BROWSER_SEARCH}https://www.google.com/{ENTER}
    Click Link    link:Google
#    Open Browser    https://www.google.com/     edge
#    Sleep    3
#    Maximize Browser Window
#    Input Text    id:q    Agni
#    Press Keys      ENTER