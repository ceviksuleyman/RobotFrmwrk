*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${BASE_URL}  https://www.automationexercise.com/
${EMAIL}  automation01@gmail.com
${PASSWORD}  123456!a
${TEST_CASES_URL}   https://www.automationexercise.com/test_cases

*** Test Cases ***
LoginTest
  Open Browser  ${BASE_URL}    ${BROWSER}
  Maximize Browser Window
  Click Element   xpath://a[normalize-space()='Signup / Login']
  Title Should Be    Automation Exercise - Signup / Login
  Input Text    css:input[data-qa='login-email']  ${EMAIL}
  Input Text    css:input[placeholder='Password']  ${PASSWORD}
  Click Element    css:button[data-qa='login-button']
  ${Login_User_Name}    Get Text     css:li a>b
  Should Be Equal As Strings     ${Login_User_Name}     Automation
  Sleep    3s
  Go To    ${TEST_CASES_URL}
  Sleep    3s
  Click Element    link: Cart
  Close Browser
