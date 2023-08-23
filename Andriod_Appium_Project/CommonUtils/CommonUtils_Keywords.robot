*** Settings ***
Library     AppiumLibrary
Variables    ../Config.py

*** Keywords ***
 OPEN APP
#   Open Application      http://localhost:4723/wd/hub	    platformName=Android    platformVersion=10 	deviceName=ZF652253BB  appPackage=com.google.android.calculator  appActivity=com.android.calculator2.Calculator


    Open Application      http://localhost:4723/wd/hub        platformName=${PLATFORM_NAME}       platformVersion=${PLATFORM_VERSION}     deviceName=${DEVICE_NAME}   appPackage=${appPackage}     appActivity=${appActivity}
    Log To Console    APPLICATION LAUNCHED SUCESSFULLY


 CLOSE APP
     Close Application
     Log To Console    APPLICATION CLOSED SUCESSFULLY