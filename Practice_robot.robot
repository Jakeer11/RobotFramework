***Settings***
Library     SeleniumLibrary
***Variables***
${url}  https://www.hyrtutorials.com/
${browser}  chrome   
***Test Cases***
TC1
    Open Browser   ${url}    ${browser}
    capture page screenshot     screenshot_page.png
    mouse over  //a[text()='Selenium Practice']
    capture element screenshot  //a[text()='Selenium Practice']   /D:/Python_programs/DBTesting/mouse_hover.png
    mouse over  //a[text()='Broken Links']
    click element   //a[text()='Link1']
    sleep   3
    close all browsers
     

***Keywords***