*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Search Test
    Open Browser     https://www.google.com/     chrome
    Input Text    name:q    AGNI
    Press Keys    name:q   ENTER

Login Test
    Open Browser     https://www.leafground.com/input.xhtml     chrome
    Input Text    id:j_idt106:auto-complete_input   ss
     ${item} = Select From List By Value    xpath: (//span[@id='j_idt106:auto-complete_panel']/ul/li)[3]  ss3S
   log to console  Item: ${item.text}

