*** Settings ***
Library  SeleniumLibrary

*** Variables ***
*** Test Cases ***
DemoWebRegister
    open browser  https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    select radio button  Gender  M
    input text  id:FirstName  jakeer
    input text  id:LastName  shaik
    input text  id:Email  aws.learned@gmail.com
    input text  id:Password  Jakeer@11
    input text  id:ConfirmPassword  Jakeer@11
    close browser
*** Keywords ***
