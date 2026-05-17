*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://testautomationpractice.blogspot.com/
${BROWSER}  chrome

*** Test Cases ***
TC001
    ALERTSHANDLING

*** Keywords ***
ALERTSHANDLING
    open browser    ${URL}  ${BROWSER}
    maximize browser window
    click element  id:alertBtn
    alert should be present  I am an alert box!
    handle alert  accept
    handle alert  dismiss
    handle alert  leave