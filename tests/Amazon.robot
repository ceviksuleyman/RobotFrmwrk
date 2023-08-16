*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Automation Exercise
  Open Browser    https://www.automationexercise.com/    chrome
  Maximize Browser Window
  Title Should Be    Automation Exercise
  Sleep    2s
  Close Browser

#pip install robotframework
#pip install robotframework-seleniumlibrary
#pip install webdrivermanager