*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LAUNCHINGBROWSER
    open browser  https://testautomationpractice.blogspot.com/  chrome
    maximize browser window
    #execute javascript  window.scrollTo(0,1250)
    #scroll element into view  //input[@id='comboBox']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)  #end of the page
    sleep  3
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)  #begening of the page
    sleep  3
    close browser

*** Keywords ***
