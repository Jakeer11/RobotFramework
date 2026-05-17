*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
WINDOW HANDLING USING INDEX
    open browser  https://demo.automationtesting.in/Windows.html  chrome
    maximize browser window

    open browser  https://www.youtube.com/  chrome
    maximize browser window

    switch browser  1
    ${title}=   get title
    log to console  ${title}
    click element  XPATH://a[button[@class='btn btn-info']]

    # switch browser  2
    # ${tit_le}=   get title
    # log to console  ${tit_le}

WINDOW HANDLING USING TITLE
    close all browsers

