*** Settings ***
Library         SeleniumLibrary
Library    String
Library    Collections
Resource        ../CommonUtilis/Common.robot
Resource        ../Keywords/keyword.robot
Resource        ../TestData/data.robot
#Suite Setup         Open the Browser with URL    ${url1}    ${Browser1}
#Suite Teardown      Close the Browser
#Library         DataDriver      file=../TestData/Data.xlsx   sheetname=sheet1       include=sanity
#Test Template    Open the Browser with URL


*** Test Cases ***
#Testing 1
#       [Tags]          Reg
#       keyword.SuccessMsg
#       search the term
#
#Testing 2
#        [Tags]          Reg
#
#        select Images Search

Dictionary Test
#        &{alphabets}=       Create Dictionary           a=apple         b=ball
        Log To Console    ${alphabets.a}
        Log To Console    ${alphabets.b}
        Log To Console    ${alphabets}
        Dictionary Should Contain Key             ${alphabets}    a
        Dictionary Should Contain Value           ${alphabets}    apple
        FOR  ${key}  ${value}  IN  &{alphabets}
                Log To Console    ${key} - ${value}
        END
        FOR  ${key}   IN  @{alphabets.keys()}
                Log To Console    Key - ${key}
        END
        FOR  ${value}   IN  @{alphabets.values()}
                Log To Console    value - ${value}
        END
        FOR  ${key}   IN  @{alphabets.keys()}
                Log To Console     ${alphabets["${key}"]}
        END


            
        


















