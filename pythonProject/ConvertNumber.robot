*** Settings ***
Library     SeleniumLibrary
Library     String


*** Variables ***
${expectedResults}  2242.31
${income}  7166.67


*** Test Cases ***
Convert
#
#        ${str}     Set Variable    24000.64
#        ${type1}    Evaluate    type($str)
#        Log To Console    ${type1}
##        Log To Console    ${str}
##        ${Res1} =   Evaluate    ${str} / 10
##        Log To Console    ${Res1}
#
#        ${value_number}=  Convert To Number  ${str}
#        ${type2}    Evaluate    type($value_number)
#        Log To Console    ${type2}
#        Log To Console    ${value_number}
#        ${Res} =   Evaluate    ${value_number}/100 * 80
#        ${Res}=     Evaluate  "%.3f" % ${Res}
#        Log To Console    ${Res}







#Hello Computation
#  ${type1}    Evaluate    type($expectedResults)
#  Log To Console    ${type1}
#  ${expectedResults}=  Evaluate  (${expectedResults} / ${income})*100
#  ${type1}    Evaluate    type($expectedResults)
#  Log To Console    ${type1}
#  ${expectedResults}=  Convert To Number  ${expectedResults}  2
#  ${expectedResults}=  Evaluate  "%.2f" % ${expectedResults}
#  Log  ${expectedResults}
#  Log to Console  ${expectedResults}


#
#*** Variables ***
#${expectedResults}  2242.31
#${income}  7166.67

replace
        ${str}     Set Variable    24,496.66
        ${type1}    Evaluate    type($str)
        Log To Console    ${type1}
        Log To Console    ${str}
        ${rep}=    Evaluate    ${str.replace(",","")}
        Log To Console    ${rep}
        ${type1}    Evaluate    type($rep)
        Log To Console    ${type1}
        ${value_number}=  Convert To Number  ${rep}
        Log To Console    ${value_number}
        ${Res} =   Evaluate    ${value_number}/100 * 80 * 100
        Log To Console    ${Res}
        ${a}=   Evaluate   round(${Res})
        Log To Console    ${a}
        ${type1}    Evaluate    type($a)
        Log To Console    ${type1}




