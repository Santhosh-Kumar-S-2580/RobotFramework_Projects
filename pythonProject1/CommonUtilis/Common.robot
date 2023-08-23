*** Settings ***
Library     SeleniumLibrary
Resource        ../Keywords/keyword.robot
Resource        ../TestData/data.robot

*** Keywords ***
Open the Browser with URL
    [Arguments]    ${url}              ${Browser}
    Open Browser   ${url}              ${Browser}
    

Close the Browser
    Close Browser
    Log To Console    Browser CLosed Sucessfully

#Start The Browser
#      FOR    ${element}    IN    @{Browser}
#          Open the Browser with URL    ${url}   ${element}
#          Maximize Browser Window
#          Sleep    20
#      END

search the term
    Input Text    name:q    Hello
    Press Keys    name:q    ENTER
    
    
select Images Search
      Click Element    xpath:(//a[@class='zItAnd FOU1zf'])[2]

Testing 1
       [Tags]          smoke
       keyword.SuccessMsg
       search the term

Testing 2
        [Tags]          Reg
        select Images Search

MULTI-BROWSER TESTING
      FOR    ${url-element}    ${Browser-element}  ${TestCase-element}    IN ZIP    ${url}    ${Browser}    ${TestCase}
          Log To Console  ${TestCase-element} - ${url-element} - ${Browser-element}
          Open the Browser with URL    ${url-element}    ${Browser-element}
          Maximize Browser Window
          FOR    ${key-element}  IN   @{keywords}
                Log To Console  ${key-element}
                Run Keyword     ${key-element}
          END
          Close the Browser
      END