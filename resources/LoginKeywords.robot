*** Settings ***
Library    SeleniumLibrary
Variables    ../pageObjects/Locators.py

*** Keywords ***
Open My Browser
	[Arguments]    ${SiteUrl}    ${Browser}
	Open Browser    ${SiteUrl}    ${Browser}
	Maximize Browser Window

Click Login Link
    Click Link    ${link_loginSignup}

Enter Email
	[Arguments]    ${Email}
	Input Text    ${txt_loginUserEmail}  ${Email}

Enter Password
	[Arguments]    ${Password}
	Input Text    ${txt_loginPassword}   ${Password}

Click SignIn Btn
	Click Button    ${btn_signIn}

Verify Successfull Login
  ${Login_User_Name}    Get Text     css:li a>b
  Should Be Equal As Strings     ${Login_User_Name}     Automation

Close My Browser
    Close Browser