*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Windows browser
    open browser  https://demo.automationtesting.in/Windows.html  chrome
    maximize browser window
    sleep  4

    go to  https://youtube.com
     ${loc}=  get location
    log to console  ${loc}
    sleep  4

    go to  https://facebook.com
    ${loc}=  get location
    log to console  ${loc}
    sleep  4
    go back
    close all browsers