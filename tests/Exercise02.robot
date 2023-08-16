*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${BASE_URL}  https://www.automationexercise.com/
${EMAIL}  automation01@gmail.com
${PASSWORD}  123456!a
*** Test Cases ***

LoginTest
  Open Browser  ${BASE_URL}    ${BROWSER}
  Maximize Browser Window
  Click Element   xpath://a[normalize-space()='Signup / Login']
  Title Should Be    Automation Exercise - Signup / Login
  Input Text    css:input[data-qa='login-email']  ${EMAIL}
  Input Text    css:input[placeholder='Password']  ${PASSWORD}
  Click Element    css:button[data-qa='login-button']
  Sleep    4s
  Close Browser