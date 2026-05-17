*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
radioButtons
    Open Browser  ${url}  ${browser}
    #radio Name Value
    select radio button  gender  male

    #checkbox
    select checkbox  monday
    select checkbox  tuesday
    unselect checkbox  tuesday

    #drodown
    select from list by label  country  India
    select from list by index  country  4

    #dropdowns list
    select from list by index  animals  3
    sleep  3
    close browser
*** Keywords ***
