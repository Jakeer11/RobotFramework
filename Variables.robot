*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#scalar
${test}  its working

#list
@{Login_Data}  Jakeer  Pas@123

#dictonary
&{Emp}  username=admin  password=admin123  role=admin

*** Test Cases ***
PracticeTestCases
    Log To Console    ${test}
    Log To Console    ${Login_Data}[0]
    Log To Console    ${Emp}[username]
    ${a}=  Set Variable  23
    Log To Console  ${a}




*** Keywords ***
