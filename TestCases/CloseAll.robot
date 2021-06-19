*** Settings ***
Library     SeleniumLibrary


*** Variables ***



*** Test Cases ***
RegTest
    open browser        http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    open browser        http://www.practiceselenium.com/practice-form.html  chrome
    maximize browser window
    #close browser
    close all browsers
