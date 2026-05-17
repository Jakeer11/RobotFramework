*** Settings ***

Suite Setup     log to console  open browser
Suite Teardown  log to console  close browser

Test Setup      log to console  opening the website
Test Teardown   log to console  closing the website
*** Variables ***

*** Test Cases ***
TC1
    [Tags]  smoke
    log to console  this my FIRST testcase
TC2
    [Tags]  regression
    log to console  this my SECOND testcase
TC3
    [Tags]  regression
    log to console  this my THIRD testcase
TC4
    [Tags]  smoke
    log to console  this my FOURTH testcase
TC5
    [Tags]  user accrptance
    log to console  this my FIFTH testcase
*** Keywords ***

#robot --include=smoke Tags.robot
#robot -i smoke -i regression Tags.robot
#robot -e smoke Tags.robot