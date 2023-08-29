*** Settings ***
Library    SeleniumLibrary
Variables    ../pageObjects/Locators.py

*** Keywords ***
Open My Browser
	[Arguments]    ${SiteUrl}    ${Browser}
	Open Browser    ${SiteUrl}    ${Browser}
	Maximize Browser Window
	Set Selenium Implicit Wait    10s

Click Login Link
    Click Link    ${link_loginSignup_xpath}

Enter Email
	[Arguments]    ${Email}
	Input Text    ${txt_loginUserEmail_css}  ${Email}

Enter Password
	[Arguments]    ${Password}
	Input Text    ${txt_loginPassword_css}   ${Password}

Click SignIn Btn
	Click Button    ${btn_signIn_css}

Verify Successfull Login
	Sleep    2s
	${Login_User_Name}    Get Text     ${expected_username_css}
	Should Be Equal As Strings     ${Login_User_Name}     Automation

Close My Browser
    Close Browser