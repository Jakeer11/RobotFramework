*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
SearchingItemInSearch
    OpeningBrowser
    SearchItem
    ClosingBrowser

*** Keywords ***
OpeningBrowser
    Open Browser  https://www.ebay.com/  Chrome
SearchItem
    Input Text  XPATH://input[@id='gh-ac']  puma tshirt men
    Press Keys  XPATH://span[@class='gh-search-button__label']  RETURN
    ${title}=  Get Title
    Log To Console  ${title}
ClosingBrowser
    Close Browser

