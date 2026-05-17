*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
CaptureScreenshorts
    open browser  https://demo.nopcommerce.com/  chrome
    capture element screenshot  //img[@alt='nopCommerce demo store']  elementscreenshorts.png
    capture element screenshot  small-searchterms  serchele.png
    capture page screenshot  noppage.png
