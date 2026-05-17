*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseActions

    #doble click action
    open browser  https://testautomationpractice.blogspot.com/  chrome
    double click element  XPATH://button[normalize-space()='Copy Text']
    sleep  3

    #drand and drop action
    go to   https://testautomationpractice.blogspot.com/
    drag and drop  //p[normalize-space()='Drag me to my target']  //p[normalize-space()='Drop here']
    sleep  3

    #right click action
    open context menu  //input[@class='wikipedia-search-button']


    #click the element
    click element  //button[@id='alertBtn']

    #mouse hover
    mouse over  //button[@class='dropbtn']
    mouse over  //a[normalize-space()='Mobiles']
    click element  //a[normalize-space()='Mobiles']
    sleep  3
    close browser
    
