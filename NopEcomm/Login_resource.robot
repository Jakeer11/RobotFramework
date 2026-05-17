*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Keywords ***
LAUNCHING BROWSER
    open browser  ${url}  ${browser}
    maximize window browser
LOGINWITHUSERNAME
    [Arguments]  ${username}  ${pass}
    input text  id=Email  ${username}
LOGINWITHPASSWORD
    [Arguments]  ${pass}
    input text  id=Password  ${pass}
CLICKLOGINBUTTON
    click element  XPATH=//button[normalize-space()='Log in']
CLICKLOGOUT

ERROR MESSAGE SHOULD BE VISIBLE
    page should contain  Login was unsuccessful
CLOSETHEBROWSERS
    close all browsers
SHOULDBE VISIBLE
    page should
