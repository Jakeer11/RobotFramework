*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
TC1
    LAUNCHINGBROWSER
    LOGIN  jakeer  hussain
    ${my_title}=   get title
    log to console  ${my_title}
    SHOULDBE VISIBLE
    sleep  3
    CLOSEALLBROWSERS

*** Keywords ***
LAUNCHINGBROWSER
    open browser  ${url}  ${browser}
    maximize browser window
LOGIN
    [Arguments]  ${ussename}  ${mail}
    input text  id:name  ${ussename}
    input text  id:email  ${mail}
CLOSEALLBROWSERS
    close browser
SHOULDBE VISIBLE
    page should contain   GUI Elements


