*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${URL}  https://testautomationpractice.blogspot.com/2018/09/automation-form.html
${BROWSER}  chrome

*** Test Cases ***
OPEN LOGIN APPLICATION
    open browser    ${URL}  ${BROWSER}
    input text      name     hi
    input text      email    hello
    input text      phone    ok

