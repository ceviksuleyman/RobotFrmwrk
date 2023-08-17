*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  https://www.automationexercise.com/
${email}  automation01@gmail.com
${pwd}  123456!a


*** Test Cases ***
Login Test
	Open My Browser    ${SiteUrl}     ${Browser}
	Click Login Link
	Enter Email    ${email}
	Enter Password    ${pwd}
	Click SignIn Btn
	Verify Successfull Login
	Sleep    2s
    Close My Browser
